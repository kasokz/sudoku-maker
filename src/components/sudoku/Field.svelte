<script lang="typescript">
  export let readonly: boolean = false;
  export let topEdge: undefined | "inside" | "outside" = undefined;
  export let bottomEdge: undefined | "inside" | "outside" = undefined;
  export let rightEdge: undefined | "inside" | "outside" = undefined;
  export let leftEdge: undefined | "inside" | "outside" = undefined;
  export let value: string;
  export let size: string;
</script>

<style type="scss">
  $inner-border: 2px;
  $outer-border: 4px;

  .container {
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.5em;
    font-weight: bold;
    border: 1px solid black;
    cursor: pointer;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }

  .leftEdge__inner {
    border-left: $inner-border solid black;
  }

  .leftEdge__outer {
    border-left: $outer-border solid black;
  }

  .rightEdge__inner {
    border-right: $inner-border solid black;
  }

  .rightEdge__outer {
    border-right: $outer-border solid black;
  }

  .topEdge__inner {
    border-top: $inner-border solid black;
  }

  .topEdge__outer {
    border-top: $outer-border solid black;
  }

  .bottomEdge__inner {
    border-bottom: $inner-border solid black;
  }

  .bottomEdge__outer {
    border-bottom: $outer-border solid black;
  }

  .readonly {
    background: rgb(240, 240, 240);
    cursor: not-allowed;
  }
</style>

<div
  class:leftEdge__outer={leftEdge === 'outside'}
  class:leftEdge__inner={leftEdge === 'inside'}
  class:rightEdge__outer={rightEdge === 'outside'}
  class:rightEdge__inner={rightEdge === 'inside'}
  class:topEdge__outer={topEdge === 'outside'}
  class:topEdge__inner={topEdge === 'inside'}
  class:bottomEdge__outer={bottomEdge === 'outside'}
  class:bottomEdge__inner={bottomEdge === 'inside'}
  style="width: {size}px; height: {size}px"
  class="container"
  class:readonly>
  {#if value}{value}{/if}
</div>
