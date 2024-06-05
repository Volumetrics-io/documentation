---
description: "A guide to contributing to MRjs"
---
# Contribute to MRjs

As an open-source project, there are many opportunities to participate in MRjs.

All work happens directly on GitHub. Both core team members and external contributors send pull requests, which go through the same review process.

## Code of conduct

MRjs has adopted the [Contributor Covenant](https://www.contributor-covenant.org/) as its Code of Conduct, and we expect project participants to adhere to it. Please read [the full text](https://github.com/facebook/react/blob/main/CODE_OF_CONDUCT.md) so that you can understand what actions will and will not be tolerated.

## Help to report bugs

MRjs uses [GitHub](https://github.com/Volumetrics-io/mrjs/issues) to manage bug reports and feature requests. It helps developers keep track of what is broken and who might fix it. Users can help our effort by making their bug reports clear and specific. The better your bug report, the easier it is to identify the cause, and fix the bug.

1. Search the [issue tracker](https://github.com/Volumetrics-io/mrjs/issues) for similar issues.
2. Specify information about your browser and system (e.g., "Firefox Nightly on Fedora 39")
3. Describe the problem in detail (i.e., what happened and what you expected would happen).
4. If possible, provide a small test case with CodePen, a link to your application, and/or a screenshot. You can fork this [sample pen](https://codepen.io/lobau/pen/YzgEeQZ).

## Provide feedback

You can also use [the issue tracker](https://github.com/Volumetrics-io/mrjs/issues) to write feature requests, ideas, clarifications, and anything else that help us improve MRjs.

## Contribute code to MRjs

Check out the issues labeled [good first issue](https://github.com/Volumetrics-io/mrjs/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22) for good issues to tackle.

Here's how to submit a Pull Request (PR):

1. Have a GitHub account with SSH keys set up.
2. [Fork](https://github.com/Volumetrics-io/mrjs/fork) the repository on GitHub.
3. Clone your fork of the repository locally (i.e., `git clone git@github.com:yourusername/mrjs`).
4. Run `npm install && npm run build` to get dependencies and `npm run server` to serve the test examples.
5. Create a branch to work in (i.e., `git checkout -b mybranch`).
6. Introduce changes to your fork of the repository, commit them, and push them (i.e., `git add -A . && git commit -m 'My Changes (fixes #1234)' && git push origin mybranch`).
7. If necessary, write unit tests. Model your tests after the [loadModelsTesting](https://github.com/Volumetrics-io/mrjs/blob/main/__tests__/loadModelsTesting.test.js) setup and make sure to place them in the [proper testing folder](https://github.com/Volumetrics-io/mrjs/tree/main/__tests__).
8. [Submit a pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) to the `main` branch. If you head to the MRjs repository after running git push from earlier, you should see a pop-up to submit a pull request.
9. [Address review comments](https://stackoverflow.com/questions/9790448/how-to-update-a-pull-request-from-forked-repo) if any.

As usual with open-source, you would agree to license your contributions under the [MIT License](https://github.com/Volumetrics-io/mrjs/blob/main/LICENSE).

## Share your Work

1. Create something awesome using MRjs.
2. [Publish your work online](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/Publishing_your_website), so everyone can learn from it.
3. Share it on [Discord](https://discord.gg/volumetrics).
4. Tell us about it so we can feature it [on our blog](https://volumetrics.io/posts/).
5. For bonus points, write and publish a case study to explain how you built it.

## How to get in touch

- [Join us on Discord](https://discord.gg/volumetrics)
- [Join us on Mastodon](https://webxr.social/explore)
