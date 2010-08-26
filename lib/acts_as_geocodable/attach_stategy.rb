module CollectiveIdea #:nodoc:
  module Acts #:nodoc:
    module Geocodable #:nodoc:
      module AttachStrategy

        strategy = AttachNowStrategy.new

        class AttachNowStrategy
          def attatch(entity)
            entity.attach_geocode_now
          end
        end

        class AttachDelayedStrategy
          def attatch(entity)
            entity.attach_geocode_with_delay
          end
        end

      end
    end
  end
end