module TailwindFormHelper
    class TailwindFormBuilder < ActionView::Helpers::FormBuilder
        def label(object_name, method_name = "", options = {})
            default_options = { class: "block text-sm font-medium text-gray-700" }
            merged_options = default_options.merge(options)
            super(object_name, method_name, merged_options)
        end

        def text_field(method_name, options={})
            default_options = { class: "appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-red-500 focus:border-red-500 sm:text-sm" }
            merged_options = default_options.merge(options)
            super(method_name, merged_options)
        end

        def password_field(method_name, options={})
            default_options = { class: "appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-red-500 focus:border-red-500 sm:text-sm" }
            merged_options = default_options.merge(options)
            super(method_name, merged_options)
        end
        
        def select(object_name, method_name, choices = nil, options = {}, html_options = {}, &block)
            default_options = { class: "appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-red-500 focus:border-red-500 sm:text-sm" }
            merged_options = default_options.merge(options)
            super(object_name, method_name, choices, merged_options)
        end

        def submit(value, options={})
            default_options = { class: "w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-red-400 hover:bg-red-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500" }
            merged_options = default_options.merge(options)
            super(value, merged_options)
        end
    end
end
