# Nuxt for Docker

Projeto de estudo para Github Packages

# Environment Variables

| Name | Description | Available Values | Default |
| --------------- | - | - | - |
| APP_NAME        | Nome do Projeto | -- | app |
| PACKAGE_MANAGER | Gerenciador do Projeto | `yarn` or `npm` | `yarn` |
| NUXT_UI         | Framework UI | [Ver Abaixo](#framework-ui) | `none` |
| NUXT_TEST       | Ferramenta de Teste | [Ver Abaixo](#framework-test) | `none` |
| NUXT_MODE       | Modo de renderização | `universal` or `spa` | `universal` |
| NUXT_TARGET     | Método de implementação | `server` or `static` | `server` |
| NUXT_CI         | Integração Contínua | `github-actions`, `travis-ci` or `circleci` | `none` |
| GIT_USERNAME    | Usuário GIT | -- | `unnamed` |
| NUXT_VCS        | System de Versionamento | `git` | `git` |
| NUXT_FEATURES   | Features (separados por vírgula) | `axios`, `pwa` and `content` | -- |
| NUXT_LINTER     | Ferramentas de Linter (separadas por vírgula) | `eslint`, `prettier`, `lintStaged`, `stylelint`, `commitlint` | -- |
| NUXT_DEVTOOLS   | Ferramentas para o desenvolvimento | `jsconfig.json`, `semantic-pull-requests`, `dependabot` | -- |

# Framework UI

| Framework | Value |
| --------- | ----- |
| None | none |
| Ant Design Vue | ant-design-vue |
| BalmUI | balm-ui |
| Bootstrap Vue | bootstrap |
| Buefy | buefy |
| Chakra UI | chakra-ui |
| Element | element-ui |
| Framevuerk | framevuerk |
| Oruga | oruga |
| Tachyons | tachyons |
| Tailwind CSS | tailwind |
| Windi CSS | windicss |
| Vant | vant |
| View UI | view-ui |
| Vuetify.js | vuetify |

# Framework Test

| Framework | Value |
| --------- | ----- |
| None | none |
| Jest | jest |
| AVA | ava |
| WebdriverIO | webdriverio |
| Nightwatch | nightwatch |