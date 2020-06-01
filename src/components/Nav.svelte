<script>
  import TopAppBar, { Row, Section, Title } from "@smui/top-app-bar";

  export let segment;
</script>

<style type="scss">
  a {
    text-decoration: none;
  }

  .nav-links {
    margin-left: 2em;
    display: flex;
    align-items: center;
    height: 100%;

    a {
      padding: 0 1em;
      height: 100%;
      font-size: 1.1em;
      display: inline-block;
      vertical-align: middle;

      &:before {
        content: "";
        display: inline-block;
        vertical-align: middle;
        height: 100%;
      }

      &.current,
      &:hover {
        background: gray;
        color: white;
      }
    }
  }
</style>

<TopAppBar dense="true" variant="fixed" color="primary">
  <Row>
    <Section>
      <Title>
        <a href=".">
          <b>Sudoku Maker</b>
        </a>
      </Title>
      <div class="nav-links">
        <a
          class:current={segment === undefined}
          aria-current={segment === undefined ? 'page' : undefined}
          href=".">
          Home
        </a>
        <a
          class:current={segment === 'blog'}
          aria-current={segment === 'blog' ? 'page' : undefined}
          href="blog">
          Blog
        </a>
        <a
          class:current={segment === 'play'}
          aria-current={segment === 'play' ? 'page' : undefined}
          href="play">
          Play
        </a>
      </div>
    </Section>
  </Row>
</TopAppBar>
