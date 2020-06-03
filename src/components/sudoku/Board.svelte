<script lang="typescript">
  import { onMount } from "svelte";

  import Field from "./Field.svelte";

  let board;
  let boardSize;
  let fieldSize;

  function resize() {
    const computedStyle = getComputedStyle(board);
    boardSize = Math.min(
      parseInt(computedStyle.width),
      parseInt(computedStyle.height)
    );
    fieldSize = boardSize / 9.0;
  }

  onMount(resize);
</script>

<style type="scss">
  .board {
    width: 100%;
    height: 100%;
    display: grid;
    grid-template-areas:
      "a1 a2 a3"
      "b1 b2 b3"
      "c1 c2 c3";
  }

  .subgrid {
    width: 100%;
    height: 100%;
    display: grid;
    grid-template: repeat(3, 1fr) / repeat(3, 1fr);
    background: white;
  }

  @media (min-width: 768px) {
    .board {
      margin: 0 auto;
      width: 60%;
    }
  }
</style>

<svelte:window on:resize={resize} />

<div
  class="board"
  bind:this={board}
  style="grid-template: repeat(3, {fieldSize * 3}px) / repeat(3, {fieldSize * 3}px);">
  <div class="subgrid">
    <Field value="0" size={fieldSize} leftEdge="outside" topEdge="outside" />
    <Field value="0" size={fieldSize} topEdge="outside" />
    <Field value="0" size={fieldSize} topEdge="outside" rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="outside" />
    <Field value="0" size={fieldSize} />
    <Field value="0" size={fieldSize} rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="outside" bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" rightEdge="inside" />
  </div>
  <div class="subgrid">
    <Field value="0" size={fieldSize} leftEdge="inside" topEdge="outside" />
    <Field value="0" size={fieldSize} topEdge="outside" />
    <Field value="0" size={fieldSize} topEdge="outside" rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="inside" />
    <Field value="0" size={fieldSize} />
    <Field value="0" size={fieldSize} rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="inside" bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" rightEdge="inside" />
  </div>
  <div class="subgrid">
    <Field value="0" size={fieldSize} leftEdge="inside" topEdge="outside" />
    <Field value="0" size={fieldSize} topEdge="outside" />
    <Field value="0" size={fieldSize} topEdge="outside" rightEdge="outside" />
    <Field value="0" size={fieldSize} leftEdge="inside" />
    <Field value="0" size={fieldSize} />
    <Field value="0" size={fieldSize} rightEdge="outside" />
    <Field value="0" size={fieldSize} leftEdge="inside" bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" rightEdge="outside" />
  </div>
  <div class="subgrid">
    <Field value="0" size={fieldSize} leftEdge="outside" topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="outside" />
    <Field value="0" size={fieldSize} />
    <Field value="0" size={fieldSize} rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="outside" bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" rightEdge="inside" />
  </div>
  <div class="subgrid">
    <Field value="0" size={fieldSize} leftEdge="inside" topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="inside" />
    <Field value="0" size={fieldSize} />
    <Field value="0" size={fieldSize} rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="inside" bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" rightEdge="inside" />
  </div>
  <div class="subgrid">
    <Field value="0" size={fieldSize} leftEdge="inside" topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" rightEdge="outside" />
    <Field value="0" size={fieldSize} leftEdge="inside" />
    <Field value="0" size={fieldSize} />
    <Field value="0" size={fieldSize} rightEdge="outside" />
    <Field value="0" size={fieldSize} leftEdge="inside" bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" />
    <Field value="0" size={fieldSize} bottomEdge="inside" rightEdge="outside" />
  </div>
  <div class="subgrid">
    <Field value="0" size={fieldSize} leftEdge="outside" topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="outside" />
    <Field value="0" size={fieldSize} />
    <Field value="0" size={fieldSize} rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="outside" bottomEdge="outside" />
    <Field value="0" size={fieldSize} bottomEdge="outside" />
    <Field value="0" size={fieldSize} bottomEdge="outside" rightEdge="inside" />
  </div>
  <div class="subgrid">
    <Field value="0" size={fieldSize} leftEdge="inside" topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="inside" />
    <Field value="0" size={fieldSize} />
    <Field value="0" size={fieldSize} rightEdge="inside" />
    <Field value="0" size={fieldSize} leftEdge="inside" bottomEdge="outside" />
    <Field value="0" size={fieldSize} bottomEdge="outside" />
    <Field value="0" size={fieldSize} bottomEdge="outside" rightEdge="inside" />
  </div>
  <div class="subgrid">
    <Field value="0" size={fieldSize} leftEdge="inside" topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" />
    <Field value="0" size={fieldSize} topEdge="inside" rightEdge="outside" />
    <Field value="0" size={fieldSize} leftEdge="inside" />
    <Field value="0" size={fieldSize} />
    <Field value="0" size={fieldSize} rightEdge="outside" />
    <Field value="0" size={fieldSize} leftEdge="inside" bottomEdge="outside" />
    <Field value="0" size={fieldSize} bottomEdge="outside" />
    <Field
      value="0"
      size={fieldSize}
      bottomEdge="outside"
      rightEdge="outside" />
  </div>
</div>
