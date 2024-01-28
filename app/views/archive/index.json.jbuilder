# frozen_string_literal: true

json.message "Hello, this is a test message"
json.array! @publications, partial: 'publication', as: :publication