module Kimurai
  class Pipeline
    class DropItemError < StandardError; end

    class << self
      attr_accessor :crawler

      def name
        self.to_s.sub(/.*?::/, "").underscore.to_sym
      end
    end

    def name
      self.class.to_s.sub(/.*?::/, "").underscore.to_sym
    end

    def logger
      Log.instance
    end
  end
end
