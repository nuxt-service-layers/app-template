<template>
	<h3>Welcome To Nuxt Service Layers</h3>
	<p>Please select a database connection using the services.config.ts</p>
	<p>Then add your connection details to the .env file.</p>
	<p>Now you can select from the services to add to your project.</p>

	<button @click="$Mailer.send(email)">Send Mail</button>
	<button @click="$User.login('codypwakeford@gmail.com', 'hello123')">Login</button>
	<button @click="$User.logout">Logout</button>
	<input
		type="text"
		v-model="roleInput"
	/>
	<button @click="$User.addRole(roleInput)">Add Role</button>
	<button @click="console.log($ServicesConfig)">services config</button>
	<pre>{{ user }}</pre>
</template>

<script setup lang="ts">
const roleInput = ref("")

const user = computed(() => {
	return $User.get
})
const email: Email = {
	to: "codypwakeford@gmail.com",
	from: "codypwakeford@gmail.com",
	subject: "This is the email",
	text: "Hello this is the content.",
}
</script>
