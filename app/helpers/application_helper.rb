module ApplicationHelper
    def tailwind_primary_link_to(text, href)
        options = "w-full flex items-center justify-center bg-red-400 hover:bg-red-500 px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white"
        "<a href='#{href}' class='#{options}'>#{text}</a>".html_safe
    end

    def tailwind_secondary_link_to(text, href)
        options = "w-full flex items-center justify-center bg-slate-800 hover:bg-slate-900 px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white"
        "<a href='#{href}' class='#{options}'>#{text}</a>".html_safe
    end

    def tailwind_white_link_to(text, href)
        options = "inline-flex items-center px-6 py-3 border border-gray-300 shadow-sm text-base font-medium rounded-md text-gray-900 bg-white hover:bg-slate-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-slate-500"
        "<a href='#{href}' class='#{options}'>#{text}</a>".html_safe
    end

    def tailwind_footer_link_to(text, href)
        options = "text-base text-gray-500 hover:text-gray-900"
        "<a href='#{href}' class='#{options}'>#{text}</a>".html_safe
    end
end
