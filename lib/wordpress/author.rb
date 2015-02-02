module Refinery
  module WordPress
    class Author
      attr_reader :author_node

      def initialize(author_node)
        @author_node = author_node
      end

      def login
        author_node.xpath("wp:author_login").text
      end

      def email
        author_node.xpath("wp:author_email").text
      end

      def ==(other)
        login == other.login
      end

      def inspect
        "WordPress::Author: #{login} <#{email}>"
      end

      def to_refinery
        user = Author.find_or_initialize_by(username: login, email: email)
        unless user.persisted?
          user.password = 'password'
          user.password_confirmation = 'password'
          user.save
        end
        user
      end
    end
  end
end
