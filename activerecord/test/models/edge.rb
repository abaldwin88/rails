# frozen_string_literal: true

# This class models an edge in a directed graph.
require 'models/application_record'
class Edge < ApplicationRecord
  belongs_to :source, class_name: "Vertex", foreign_key: "source_id"
  belongs_to :sink,   class_name: "Vertex", foreign_key: "sink_id"
end
