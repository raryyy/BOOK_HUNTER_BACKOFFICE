<!-- Header -->
<div x-data="{ open: false }" class="bg-gray-700">
    <nav class="bg-gray-700">
        <div class="container mx-auto px-4">
            <div class="flex justify-between items-center py-4">
                <div class="flex items-center">
                    <a
                        class="text-white font-bold text-xl flex items-center"
                        href="index.html">
                        <svg viewBox="0 0 24 24" class="w-8 h-8 mr-2">
                            <path
                                fill="#ffffff"
                                d="M12,0C5.383,0,0,5.383,0,12s5.383,12,12,12s12-5.383,12-12S18.617,0,12,0z M6.618,6.618
                    C7.803,5.432,9.341,4.756,11,4.756s3.197,0.676,4.382,1.862c2.416,2.416,2.416,6.347,0,8.763c-1.186,1.186-2.724,1.862-4.382,1.862
                    s-3.197-0.676-4.382-1.862C4.202,12.965,4.202,9.034,6.618,6.618z M18,17.244c1.316-1.316,2-3.066,2-4.878
                    c0-1.813-0.684-3.562-2-4.878c-1.316-1.316-3.066-2-4.878-2s-3.562,0.684-4.878,2c-1.316,1.316-2,3.066-2,4.878
                    c0,1.813,0.684,3.562,2,4.878c1.316,1.316,3.066,2,4.878,2S16.684,18.56,18,17.244z" />
                        </svg>
                        BOOK HUNTER
                    </a>
                </div>
                <div class="flex md:hidden">
                    <button
                        @click="open = !open"
                        type="button"
                        class="text-gray-500 hover:text-white focus:outline-none focus:text-white">
                        <svg class="h-6 w-6 fill-current" viewBox="0 0 24 24">
                            <path
                                x-show="!open"
                                class="inline-flex"
                                fill-rule="evenodd"
                                clip-rule="evenodd"
                                d="M4 6H20V8H4V6ZM4 11H20V13H4V11ZM4 16H20V18H4V16Z" />
                            <path
                                x-show="open"
                                class="inline-flex"
                                fill-rule="evenodd"
                                clip-rule="evenodd"
                                d="M4 6H20V8H4V6ZM4 11H20V13H4V11ZM4 16H20V18H4V16ZM6 21H18V19H6V21ZM6 3H18V1H6V3Z" />
                        </svg>
                    </button>
                </div>
                <div class="hidden md:flex items-center">
                    <a
                        class="text-gray-300 hover:text-white px-3 py-2"
                        href="books.html">Books</a>
                    <a
                        class="text-gray-300 hover:text-white px-3 py-2"
                        href="authors.html">Authors</a>
                    <a
                        class="text-gray-300 hover:text-white px-3 py-2"
                        href="users/login">Se connecter</a>
                </div>
            </div>
        </div>
        <div x-show="open" class="md:hidden">
            <a class="block text-gray-300 hover:text-white px-3 py-2" href="#">Books</a>
            <a class="block text-gray-300 hover:text-white px-3 py-2" href="#">Authors</a>
            <a class="block text-gray-300 hover:text-white px-3 py-2" href="#">Se connecter</a>
        </div>
    </nav>
</div>