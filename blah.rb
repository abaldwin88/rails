do $$
declare
    selectrow record;
begin
for selectrow in
    select
      '
        ALTER TABLE "'|| T.mytable || '" ADD COLUMN IF NOT EXISTS  _rand decimal DEFAULT random();
        CREATE INDEX IF NOT EXISTS "_rand_index_'|| T.mytable || '" on  "'|| T.mytable || '"(_rand);
        CLUSTER "'|| T.mytable || '" USING "_rand_index_'|| T.mytable || '";
      ' as script

   from
      (
        select tablename as mytable from pg_tables where schemaname  ='public' AND tablename NOT LIKE '%measurements%'
      ) t
loop
execute selectrow.script;
end loop;
end;
$$;


