<h2 class="text-2xl font-bold mb-4 text-center">Connexion</h2>
<div class="p-6 max-w-xl mx-auto">
    <form action="users/verification" method="post">
        <div class="mb-4">
            <label for="name" class="block text-gray-400 text-sm font-bold mb-2">
                Pseudo
            </label>
            <input
                type="text"
                id="name"
                name="name"
                class="w-full px-3 py-2 text-gray-900 focus:outline-none focus:shadow-outline"
                placeholder="Entrez votre pseudo"
                required />
        </div>
        <div class="mb-6">
            <label for="password" class="block text-gray-400 text-sm font-bold mb-2">
                Mot de passe
            </label>
            <input
                type="password"
                id="password"
                name="password"
                class="w-full px-3 py-2 text-gray-900 focus:outline-none focus:shadow-outline"
                placeholder="Entrez votre mot de passe"
                required />
        </div>
        <div class="flex items-center justify-between">
            <button
                type="submit"
                class="bg-red-500 hover:bg-red-800 text-white font-bold py-2 px-4 rounded-full focus:outline-none focus:shadow-outline">
                Se connecter
            </button>
            <a
                href="#"
                class="inline-block align-baseline font-bold text-sm text-gray-400 hover:text-white">
                Mot de passe oublié ?
            </a>
        </div>
        <div class="text-center mt-4">
            <p class="text-gray-400">Vous n'avez pas de compte ?</p>
            <a
                href="#"
                class="text-red-500 hover:text-red-800 font-bold text-sm">
                Créer un compte
            </a>
        </div>
    </form>
</div>