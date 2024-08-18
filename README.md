# ADH Partnership Frontend

Information Coming Soon!

## Running Locally

This project uses [Yarn](https://yarnpkg.com/) for dependency management. Make sure you have [Yarn Installed](https://yarnpkg.com/getting-started/install) before continuing.

### Installation and Running

Clone the project:

```sh
git clone git@github.com:adh-partnership/frontend.git
```

Install dependencies:

```sh
yarn install
```

Run the instance in developer mode:

```sh
yarn run dev
```

## Selecting a Facility

By default, the `src/facility.ts` is used to determine which facility to load pages for. You can copy one of the existing facility files to `src/facility.ts` to override which facility you're working on.

This process is automatically done in the build during deployment, so the `src/facility.ts` file is only for local development.
