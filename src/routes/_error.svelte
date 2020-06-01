<script>
  import Paper, { Title, Subtitle, Content } from "@smui/paper";

  export let status;
  export let error;

	const dev = process.env.NODE_ENV === "development";
</script>

<style>
	.container {
		margin: 0 auto;
		width: 50%;
	}
</style>

<svelte:head>
  <title>{status}</title>
</svelte:head>

<div class="container">
  <Paper>
    <Title>{status}</Title>
    <Content>
      {error.message}
      {#if dev && error.stack}
        <pre>{error.stack}</pre>
      {/if}
    </Content>
  </Paper>
</div>
