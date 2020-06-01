<script>
	import Nav from "../components/Nav.svelte";
	import { DenseFixedAdjust } from "@smui/top-app-bar";

  export let segment;
</script>

<style>
  main {
    background-color: white;
		margin: 0 auto;
		width: 100vw;
		height: 100vh;
  }
</style>

<svelte:head>
  <link
    rel="stylesheet"
    href="https://fonts.googleapis.com/icon?family=Material+Icons" />
</svelte:head>

<Nav {segment} />

<main use:DenseFixedAdjust>
  <slot />
</main>
