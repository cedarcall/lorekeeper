-- Auto-generated production data export
-- Generated: 2026-03-07 23:39:08
-- Source database: lorekeeper

SET FOREIGN_KEY_CHECKS=0;

-- site_pages: 14 rows
DELETE FROM `site_pages`;
INSERT INTO `site_pages` (`id`, `key`, `title`, `description`, `text`, `header_image`, `is_visible`, `created_at`, `updated_at`, `parsed_text`, `can_comment`) VALUES
('1', 'terms', 'Terms of Service', NULL, 'This is the terms of usage of your site. Users will see a link to these terms when registering and a Terms link is displayed at the bottom of the layout.', NULL, '1', '2026-02-06 06:06:25', '2026-02-06 06:06:25', 'This is the terms of usage of your site. Users will see a link to these terms when registering and a Terms link is displayed at the bottom of the layout.', '0'),
('2', 'privacy', 'Privacy Policy', NULL, 'This is a page that explains how your site might use your members\' data. Users will see a link to this page when registering and a Privacy link is displayed at the bottom of the layout.', NULL, '1', '2026-02-06 06:06:25', '2026-02-06 06:06:25', 'This is a page that explains how your site might use your members\' data. Users will see a link to this page when registering and a Privacy link is displayed at the bottom of the layout.', '0'),
('3', 'about', 'About', NULL, 'Welcome to Lorekeeper! This page is editable from the admin panel. Besides being displayed on the front page when users are logged out, it is also accessible from the About link at the bottom of the page.', NULL, '1', '2026-02-06 06:06:25', '2026-02-06 06:06:25', 'Welcome to Lorekeeper! This page is editable from the admin panel. Besides being displayed on the front page when users are logged out, it is also accessible from the About link at the bottom of the page.', '0'),
('4', 'credits', 'Credits', NULL, 'This page will contain credits for code, art, ect that has been used on your site!', NULL, '1', '2026-02-06 06:06:25', '2026-02-06 06:06:25', 'This page will contain credits for code, art, ect that has been used on your site!', '0'),
('5', 'monthly-event', 'Monthly Event', NULL, '<p>Coming soon.</p>', NULL, '1', '2026-02-12 05:53:28', '2026-02-12 05:53:28', '<p>Coming soon.</p>', '0'),
('6', 'contracts', 'Contracts', NULL, '<p>Coming soon.</p>', NULL, '1', '2026-02-12 05:53:28', '2026-02-12 05:53:28', '<p>Coming soon.</p>', '0'),
('7', 'expeditions', 'Expeditions', NULL, '<p>Coming soon.</p>', NULL, '1', '2026-02-12 05:53:28', '2026-02-12 05:53:28', '<p>Coming soon.</p>', '0'),
('8', 'featured-planet', 'Featured Planet', NULL, '<p>Coming soon.</p>', NULL, '1', '2026-02-12 05:53:28', '2026-02-12 05:53:28', '<p>Coming soon.</p>', '0'),
('9', 'current-galaxy', 'Current Galaxy', 'Galaxies change monthly via player vote!', '<h2>🌌 CURRENT GALAXY &mdash; <strong>ALPHA 1</strong></h2>
<p><strong>Active Cycle:</strong> <em>2/01 &ndash; 3/01</em></p>
<hr />
<p><strong>Alpha 1</strong> is the first officially charted galaxy accessible to civilian explorers. While considered relatively stable compared to deeper sectors, it remains unpredictable&mdash;shaped by harsh environments, shifting stellar conditions, and incomplete survey data.</p>
<p class=\"empty-p\">&nbsp;</p>
<p>This galaxy is home to <strong>Port Artemis</strong>, the primary neutral docking hub for trade, travel, and information exchange.</p>
<h2>🧭 GALAXY NOTES</h2>
<ul>
<li>
<p>Planets require <strong>multiple expeditions</strong> to fully unlock.</p>
</li>
<li>
<p>Once fully discovered, a planet will:</p>
<ul>
<li>
<p>Be added to the discovered planet registry</p>
</li>
<li>
<p>Become permanently accessible to its discoverer</p>
</li>
<li>
<p>Be eligible for <strong>naming rights</strong></p>
</li>
</ul>
</li>
<li>
<p>Current galaxies <strong>rotate monthly</strong>.</p>
</li>
<li>
<p>Previously explored galaxies may become inaccessible unless selected during the next vote.</p>
</li>
</ul>
<hr />
<p><em>Data incomplete. Exploration strongly advised.</em><br /><em>Proceed with caution, traveler.</em></p>', NULL, '1', '2026-02-12 05:53:28', '2026-02-23 06:36:51', '<h2>🌌 CURRENT GALAXY — <strong>ALPHA 1</strong></h2>
<p><strong>Active Cycle:</strong> <em>2/01 – 3/01</em></p>
<hr />
<p><strong>Alpha 1</strong> is the first officially charted galaxy accessible to civilian explorers. While considered relatively stable compared to deeper sectors, it remains unpredictable—shaped by harsh environments, shifting stellar conditions, and incomplete survey data.</p>
<p class=\"empty-p\"> </p>
<p>This galaxy is home to <strong>Port Artemis</strong>, the primary neutral docking hub for trade, travel, and information exchange.</p>
<h2>🧭 GALAXY NOTES</h2>
<ul>
<li>
<p>Planets require <strong>multiple expeditions</strong> to fully unlock.</p>
</li>
<li>
<p>Once fully discovered, a planet will:</p>
<ul>
<li>
<p>Be added to the discovered planet registry</p>
</li>
<li>
<p>Become permanently accessible to its discoverer</p>
</li>
<li>
<p>Be eligible for <strong>naming rights</strong></p>
</li>
</ul>
</li>
<li>
<p>Current galaxies <strong>rotate monthly</strong>.</p>
</li>
<li>
<p>Previously explored galaxies may become inaccessible unless selected during the next vote.</p>
</li>
</ul>
<hr />
<p><em>Data incomplete. Exploration strongly advised.</em><br /><em>Proceed with caution, traveler.</em></p>', '0'),
('10', 'rules', 'ARPG Rules', NULL, '<p>Welcome to <strong>Dreadfarer</strong> &mdash; a space-themed ARPG centered on exploration, creativity, and collaborative storytelling. To keep the universe enjoyable and fair for everyone, please review and follow the rules below.</p>
<hr />
<h2>✨ 1. Be Respectful</h2>
<ul>
<li>
<p>Treat all members with respect, both in comments and private messages.</p>
</li>
<li>
<p>Harassment, discrimination, hate speech, or targeted hostility of any kind will not be tolerated.</p>
</li>
<li>
<p>In-character conflict is welcome; <strong>out-of-character hostility is not</strong>.</p>
</li>
</ul>
<p>If an issue arises, staff are always available to help&mdash;please don&rsquo;t escalate situations publicly.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🎨🖋️ 2. Creativity Comes First</h2>
<ul>
<li>
<p>Writing and art are treated as <strong>equal forms of creativity</strong>.</p>
</li>
<li>
<p>Do not shame, pressure, or belittle others based on their preferred medium or skill level.</p>
</li>
<li>
<p>Constructive feedback is welcome <strong>only if requested</strong> by the creator.</p>
</li>
<li>
<p>AI work of any kind is never allowed.</p>
</li>
</ul>
<p>This group exists to encourage creativity, not competition.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🌍 3. Lore &amp; World Consistency</h2>
<ul>
<li>
<p>Please respect established world lore, factions, species rules, and systems.</p>
</li>
<li>
<p>Creative freedom is encouraged, but large lore changes, contradictions, or additions must be approved by staff.</p>
</li>
<li>
<p>If you&rsquo;re unsure whether something fits&mdash;<strong>ask first!</strong> We&rsquo;re happy to help.</p>
</li>
</ul>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🚀 4. Expeditions, Factions &amp; Rewards</h2>
<ul>
<li>
<p>Only submit content that follows the current <strong>Creative Rewards System</strong>.</p>
</li>
<li>
<p>Do not inflate word counts, reuse old work, or misrepresent effort.</p>
</li>
<li>
<p>Complex bonuses, collaborations, and extras are subject to staff review.</p>
</li>
</ul>
<p>Abuse of reward systems may result in reduced rewards or rule changes.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🪐 5. Planet &amp; Location Naming</h2>
<ul>
<li>
<p>Planet names must be:</p>
<ul>
<li>
<p>Respectful</p>
</li>
<li>
<p>Original</p>
</li>
<li>
<p>Immersion-friendly</p>
</li>
</ul>
</li>
<li>
<p>Names referencing real-world memes, modern slang, or offensive content are not allowed.</p>
</li>
</ul>
<p>Staff reserve the right to request renames if necessary.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🤝 6. Collaborations</h2>
<ul>
<li>
<p>Collaborations must involve <strong>equal effort and representation</strong> from all participants.</p>
</li>
<li>
<p>All collaborators receive the same rewards and must meet minimum requirements.</p>
</li>
<li>
<p>Credit all collaborators clearly in your submission.</p>
</li>
</ul>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🛑 7. Content Boundaries</h2>
<ul>
<li>
<p>NSFW content must follow DeviantArt&rsquo;s sitewide rules and be <strong>properly tagged</strong>.</p>
</li>
<li>
<p>Excessively graphic, fetishistic, or non-consensual content is not allowed within group submissions.</p>
</li>
<li>
<p>If in doubt, ask staff before posting.</p>
</li>
<li>
<p>We are 15+ friendly. Swearing is fine, mentions of wounds is fine, NSFW is not.</p>
</li>
</ul>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🧭 8. Staff Decisions</h2>
<ul>
<li>
<p>Staff decisions are made to protect fairness, balance, and the long-term health of the group.</p>
</li>
<li>
<p>If you disagree with a ruling, you may respectfully discuss it <strong>privately</strong> with staff.</p>
</li>
<li>
<p>Public arguments over moderation will not be tolerated.</p>
</li>
</ul>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🌠 Final Notes</h2>
<p>Dreadfarer is a shared universe shaped by its players. We aim to stay flexible, welcoming, and creative&mdash;but if leniency is abused, rules may be adjusted accordingly.</p>', NULL, '1', '2026-02-16 02:35:48', '2026-02-16 02:35:48', '<p>Welcome to <strong>Dreadfarer</strong> — a space-themed ARPG centered on exploration, creativity, and collaborative storytelling. To keep the universe enjoyable and fair for everyone, please review and follow the rules below.</p>
<hr />
<h2>✨ 1. Be Respectful</h2>
<ul>
<li>
<p>Treat all members with respect, both in comments and private messages.</p>
</li>
<li>
<p>Harassment, discrimination, hate speech, or targeted hostility of any kind will not be tolerated.</p>
</li>
<li>
<p>In-character conflict is welcome; <strong>out-of-character hostility is not</strong>.</p>
</li>
</ul>
<p>If an issue arises, staff are always available to help—please don’t escalate situations publicly.</p>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🎨🖋️ 2. Creativity Comes First</h2>
<ul>
<li>
<p>Writing and art are treated as <strong>equal forms of creativity</strong>.</p>
</li>
<li>
<p>Do not shame, pressure, or belittle others based on their preferred medium or skill level.</p>
</li>
<li>
<p>Constructive feedback is welcome <strong>only if requested</strong> by the creator.</p>
</li>
<li>
<p>AI work of any kind is never allowed.</p>
</li>
</ul>
<p>This group exists to encourage creativity, not competition.</p>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🌍 3. Lore &amp; World Consistency</h2>
<ul>
<li>
<p>Please respect established world lore, factions, species rules, and systems.</p>
</li>
<li>
<p>Creative freedom is encouraged, but large lore changes, contradictions, or additions must be approved by staff.</p>
</li>
<li>
<p>If you’re unsure whether something fits—<strong>ask first!</strong> We’re happy to help.</p>
</li>
</ul>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🚀 4. Expeditions, Factions &amp; Rewards</h2>
<ul>
<li>
<p>Only submit content that follows the current <strong>Creative Rewards System</strong>.</p>
</li>
<li>
<p>Do not inflate word counts, reuse old work, or misrepresent effort.</p>
</li>
<li>
<p>Complex bonuses, collaborations, and extras are subject to staff review.</p>
</li>
</ul>
<p>Abuse of reward systems may result in reduced rewards or rule changes.</p>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🪐 5. Planet &amp; Location Naming</h2>
<ul>
<li>
<p>Planet names must be:</p>
<ul>
<li>
<p>Respectful</p>
</li>
<li>
<p>Original</p>
</li>
<li>
<p>Immersion-friendly</p>
</li>
</ul>
</li>
<li>
<p>Names referencing real-world memes, modern slang, or offensive content are not allowed.</p>
</li>
</ul>
<p>Staff reserve the right to request renames if necessary.</p>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🤝 6. Collaborations</h2>
<ul>
<li>
<p>Collaborations must involve <strong>equal effort and representation</strong> from all participants.</p>
</li>
<li>
<p>All collaborators receive the same rewards and must meet minimum requirements.</p>
</li>
<li>
<p>Credit all collaborators clearly in your submission.</p>
</li>
</ul>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🛑 7. Content Boundaries</h2>
<ul>
<li>
<p>NSFW content must follow DeviantArt’s sitewide rules and be <strong>properly tagged</strong>.</p>
</li>
<li>
<p>Excessively graphic, fetishistic, or non-consensual content is not allowed within group submissions.</p>
</li>
<li>
<p>If in doubt, ask staff before posting.</p>
</li>
<li>
<p>We are 15+ friendly. Swearing is fine, mentions of wounds is fine, NSFW is not.</p>
</li>
</ul>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🧭 8. Staff Decisions</h2>
<ul>
<li>
<p>Staff decisions are made to protect fairness, balance, and the long-term health of the group.</p>
</li>
<li>
<p>If you disagree with a ruling, you may respectfully discuss it <strong>privately</strong> with staff.</p>
</li>
<li>
<p>Public arguments over moderation will not be tolerated.</p>
</li>
</ul>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🌠 Final Notes</h2>
<p>Dreadfarer is a shared universe shaped by its players. We aim to stay flexible, welcoming, and creative—but if leniency is abused, rules may be adjusted accordingly.</p>', '0'),
('11', 'getting-started', 'Getting Started', 'Start your adventure in our world', '<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":27,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_187/-150-2x.png\",\"w\":300,\"h\":187}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_129,y_0,scl_0.53475935828877/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_107/-200h-2x.png\",\"w\":600,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_187/-300w.png\",\"h\":54,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_187/-300w-2x.png\",\"w\":600,\"h\":187}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_67/-375w.png\",\"h\":67,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_134/-375w-2x.png\",\"w\":750,\"h\":134}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_74/-414w.png\",\"h\":74,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_828,h_148/-414w-2x.png\",\"w\":828,\"h\":148}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_100,x_29,y_0,scl_0.53475935828877/-250t.png\",\"h\":100,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1000,h_179/-250t-2x.png\",\"w\":1000,\"h\":179}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_700,h_125/-350t.png\",\"h\":125,\"w\":700,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1047,h_187/-350t-2x.png\",\"w\":1047,\"h\":187}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_800,h_143/-400t.png\",\"h\":143,\"w\":800,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1047,h_187/-400t-2x.png\",\"w\":1047,\"h\":187}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_1047,h_187/-fullview.png\",\"h\":187,\"w\":1047,\"o\":true,\"f\":39555},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_1047,h_187/-fullview.png\",\"h\":187,\"w\":1047,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":187,\"w\":1047,\"o\":true,\"f\":39555},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_106,y_0,scl_0.49197860962567/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_212,y_0,scl_0.98395721925134/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_144,y_0,scl_0.66844919786096/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_187,x_215,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":187}]}]},\"filetype\":\"png\",\"entityId\":1284686405}\" data-alignment=\"center\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8vadh-f7fac62a-3d85-4958-bee1-3e5a5cdb9245.png/v1/fill/w_800,h_143/get_started_by_howlingcrown_dl8vadh-400t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTg3IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDh2YWRoLWY3ZmFjNjJhLTNkODUtNDk1OC1iZWUxLTNlNWE1Y2RiOTI0NS5wbmciLCJ3aWR0aCI6Ijw9MTA0NyJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.YC5kMw2DKxc-FLwgLE0YXKRgYW8RNE-6XG81PSm07f4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8vadh-f7fac62a-3d85-4958-bee1-3e5a5cdb9245.png/v1/fill/w_1047,h_187/get_started_by_howlingcrown_dl8vadh-400t-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTg3IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDh2YWRoLWY3ZmFjNjJhLTNkODUtNDk1OC1iZWUxLTNlNWE1Y2RiOTI0NS5wbmciLCJ3aWR0aCI6Ijw9MTA0NyJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.YC5kMw2DKxc-FLwgLE0YXKRgYW8RNE-6XG81PSm07f4 2x\" alt=\"Get-started\" /></div>
</figure>
</div>
<h2 style=\"text-align: center;\">🌑 What Is Dreadfarer?</h2>
<p class=\"empty-p\">&nbsp;</p>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":150,\"w\":80,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_121,h_228/-150-2x.png\",\"w\":121,\"h\":228}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/fill/w_106,h_200/-200h.png\",\"h\":200,\"w\":106,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_121,h_228/-200h-2x.png\",\"w\":121,\"h\":228}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true,\"f\":2862},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":228,\"w\":121,\"o\":true,\"f\":2862},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_20,scl_0.7603305785124/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_121,h_184,x_0,y_27,scl_1/-92s-2x.png\",\"w\":121,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_121,h_125,x_0,y_27,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_121,h_228,x_0,y_27,scl_1/-125s-2x.png\",\"w\":121,\"h\":228}]}]},\"filetype\":\"png\",\"entityId\":1283434861}\" data-width=\"100\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84god-d860403f-cdcb-45c8-9d2b-c28236844a21.png/v1/fill/w_106,h_200/artemis_decal_by_howlingcrown_dl84god-200h.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI4IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0Z29kLWQ4NjA0MDNmLWNkY2ItNDVjOC05ZDJiLWMyODIzNjg0NGEyMS5wbmciLCJ3aWR0aCI6Ijw9MTIxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.OQ_GGZZsR3N_OPUfcMGAMN_pmOfeoofFcUt77xMULh4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84god-d860403f-cdcb-45c8-9d2b-c28236844a21.png/v1/fill/w_121,h_228/artemis_decal_by_howlingcrown_dl84god-200h-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI4IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0Z29kLWQ4NjA0MDNmLWNkY2ItNDVjOC05ZDJiLWMyODIzNjg0NGEyMS5wbmciLCJ3aWR0aCI6Ijw9MTIxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.OQ_GGZZsR3N_OPUfcMGAMN_pmOfeoofFcUt77xMULh4 2x\" alt=\"Artemis-decal\" /></div>
</figure>
</div>
<p>Dreadfarer is a space-themed ARPG focused on uncovering unknown worlds, completing contracts, and influencing an evolving universe. Players take part in expeditions, missions, and faction work while developing their characters over time.</p>
<p class=\"empty-p\">&nbsp;</p>
<p>The playable species of Dreadfarer is a <strong>semi-closed species</strong> known as the <strong>Voidi</strong>.</p>
<p class=\"empty-p\">&nbsp;</p>
<p>Voidi are a lore-heavy species native to an extremely hostile environment, with multiple subspecies shaped by survival, adaptation, and artificial interference. Because Voidi are deeply integrated into the setting and mechanics of the game, creation rules exist to keep the species cohesive while still allowing for creativity and individuality.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":49,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_194/-150-2x.png\",\"w\":300,\"h\":194}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_1,y_0,scl_0.51546391752577/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_591,h_194/-200h-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_194/-300w.png\",\"h\":98,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-300w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_123/-375w.png\",\"h\":123,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-375w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_136/-414w.png\",\"h\":136,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-414w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_164/-250t.png\",\"h\":164,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_591,h_194/-250t-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true,\"f\":24054},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":194,\"w\":591,\"o\":true,\"f\":24054},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_47,y_0,scl_0.47422680412371/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_94,y_0,scl_0.94845360824742/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_64,y_0,scl_0.64432989690722/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_194,x_99,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":194}]}]},\"filetype\":\"png\",\"entityId\":1283536410}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86n16-89548a3c-704c-4d19-905f-7f860fc13c51.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4Nm4xNi04OTU0OGEzYy03MDRjLTRkMTktOTA1Zi03Zjg2MGZjMTNjNTEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.fDzAsd9bux4jGVCkzxQnKhQCOGcS90FDIszsNubDxZU\" alt=\"Divider Top \" /></span></figure>
</div>
<h2 style=\"text-align: center;\">🧬 How Do I Get a Voidi?</h2>
<h4>Before creating a Voidi, you <u><strong>must</strong></u><u> </u>read:</h4>
<ul>
<li>
<p>The <a href=\"https://www.deviantart.com/hermescasp/journal/Rules-1283641358\" rel=\"noopener noreferrer nofollow ugc\"><strong>Group Rules</strong></a></p>
</li>
<li>
<p>The <a href=\"https://www.deviantart.com/hermescasp/journal/Species-Anatomy-1283218183\" rel=\"noopener noreferrer nofollow ugc\"><strong>Voidi Species Anatomy &amp; Creation Guide</strong></a></p>
</li>
</ul>
<p>Because Voidi are semi-closed:</p>
<ul>
<li>
<p><strong>Certain subspecies are free to create</strong>, as long as you follow their specific creation guidelines and all group rules.</p>
</li>
<li>
<p>As long as the subspecies you want is <strong>not limited</strong>, you may create one for free.</p>
</li>
</ul>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":135,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_270/-150-2x.png\",\"w\":300,\"h\":270}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/fill/w_222,h_200/-200h.png\",\"h\":200,\"w\":222,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_300,h_270/-200h-2x.png\",\"w\":300,\"h\":270}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_278,h_250/-250t.png\",\"h\":250,\"w\":278,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_300,h_270/-250t-2x.png\",\"w\":300,\"h\":270}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true,\"f\":8525},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":270,\"w\":300,\"o\":true,\"f\":8525},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_3,y_0,scl_0.34074074074074/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_5,y_0,scl_0.68148148148148/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_3,y_0,scl_0.46296296296296/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_250,x_7,y_0,scl_0.92592592592593/-125s-2x.png\",\"w\":250,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1283537224}\" data-width=\"67\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86nns-5fce4dc3-72a9-4376-a933-0b9948864e25.png/v1/fit/w_150,h_150/artemis_lines_by_howlingcrown_dl86nns-150.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjcwIiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2bm5zLTVmY2U0ZGMzLTcyYTktNDM3Ni1hOTMzLTBiOTk0ODg2NGUyNS5wbmciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.W_Ebes9bSdWBqlBewQmsDoj5la5sa_2ZxMPEOgyi93g\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86nns-5fce4dc3-72a9-4376-a933-0b9948864e25.png/v1/fit/w_300,h_270/artemis_lines_by_howlingcrown_dl86nns-150-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjcwIiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2bm5zLTVmY2U0ZGMzLTcyYTktNDM3Ni1hOTMzLTBiOTk0ODg2NGUyNS5wbmciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.W_Ebes9bSdWBqlBewQmsDoj5la5sa_2ZxMPEOgyi93g 2x\" alt=\"Artemis-lines\" /></div>
</figure>
</div>
<h3>Limited Subspecies</h3>
<p>Limited subspecies <strong>cannot</strong> be freely made. These may only be obtained through:</p>
<ul>
<li>
<p>In-game mechanics</p>
</li>
<li>
<p>Raffles</p>
</li>
<li>
<p>MYO (Make-Your-Own) sales</p>
</li>
</ul>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":150,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_300/-150-2x.png\",\"w\":300,\"h\":300}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/fill/w_200,h_200/-200h.png\",\"h\":200,\"w\":200,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_400,h_400/-200h-2x.png\",\"w\":400,\"h\":400}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_900/-300w.png\",\"h\":300,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_1280/-300w-2x.png\",\"w\":600,\"h\":1280}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_375/-375w.png\",\"h\":375,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_750/-375w-2x.png\",\"w\":750,\"h\":750}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_414/-414w.png\",\"h\":414,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_828,h_828/-414w-2x.png\",\"w\":828,\"h\":828}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_250,h_250/-250t.png\",\"h\":250,\"w\":250,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_500/-250t-2x.png\",\"w\":500,\"h\":500}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_350,h_350/-350t.png\",\"h\":350,\"w\":350,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_700,h_700/-350t-2x.png\",\"w\":700,\"h\":700}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_400,h_400/-400t.png\",\"h\":400,\"w\":400,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_800,h_800/-400t-2x.png\",\"w\":800,\"h\":800}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_894,h_894/-pre.png\",\"h\":894,\"w\":894,\"o\":true,\"f\":35219,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_894,h_894/-pre-2x.png\",\"w\":894,\"h\":894}]},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_894,h_894/-pre.png\",\"h\":894,\"w\":894,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_894,h_894/-pre-2x.png\",\"w\":894,\"h\":894}]},{\"t\":\"fullview\",\"r\":0,\"c\":\"/v1/fill/w_1280,h_1280/-fullview.png\",\"h\":1280,\"w\":1280,\"o\":true,\"f\":35219},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_0,scl_0.061333333333333/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_0,y_0,scl_0.12266666666667/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_0,y_0,scl_0.083333333333333/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_250,x_0,y_0,scl_0.16666666666667/-125s-2x.png\",\"w\":250,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1283036860}\" data-width=\"72\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7vxks-ab432fd7-deea-4d07-bb58-6e1e0762b6ad.png/v1/fit/w_150,h_150/dreadfarer_logo_large_by_howlingcrown_dl7vxks-150.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3dnhrcy1hYjQzMmZkNy1kZWVhLTRkMDctYmI1OC02ZTFlMDc2MmI2YWQucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.aEvrPL56AYKTrhXTIyFax6ysWRqqHS7cfWf90gaS2CM\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7vxks-ab432fd7-deea-4d07-bb58-6e1e0762b6ad.png/v1/fit/w_300,h_300/dreadfarer_logo_large_by_howlingcrown_dl7vxks-150-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3dnhrcy1hYjQzMmZkNy1kZWVhLTRkMDctYmI1OC02ZTFlMDc2MmI2YWQucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.aEvrPL56AYKTrhXTIyFax6ysWRqqHS7cfWf90gaS2CM 2x\" alt=\"Dreadfarer-logo-large\" /></div>
</figure>
</div>
<h3>Pre-Made Designs</h3>
<p>Pre-made Voidi designs are occasionally available through:</p>
<ul>
<li>
<p>Auctions</p>
</li>
<li>
<p>Raffles</p>
</li>
</ul>
<p>Trading is also permitted for:</p>
<ul>
<li>
<p>Pre-made designs</p>
</li>
<li>
<p>Limited subspecies slots</p>
</li>
</ul>
<p>All trades must follow group rules.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283522388}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86c7o-05155355-5d8f-4870-851a-9b80f2c29591.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NmM3by0wNTE1NTM1NS01ZDhmLTQ4NzAtODUxYS05YjgwZjJjMjk1OTEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.n6GyYrxX3vsH-9D_nGFwFnRb76jUm2mefPtJ4OdiIVg\" alt=\"Divider Bottom\" /></span></figure>
</div>
<h2 style=\"text-align: center;\">🚀 Getting Started</h2>
<p>Once you have a Voidi design ready:</p>
<ol>
<li>
<p><strong>DM one of the group owners for approval</strong></p>
</li>
<li>
<p>After approval, the group&rsquo;s admin account will create an <strong>official character post</strong></p>
</li>
<li>
<p>This post acts as your character&rsquo;s canon reference and must be linked anywhere you use the character (prompts, expeditions, missions, etc.)</p>
</li>
</ol>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":49,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_194/-150-2x.png\",\"w\":300,\"h\":194}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_1,y_0,scl_0.51546391752577/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_591,h_194/-200h-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_194/-300w.png\",\"h\":98,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-300w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_123/-375w.png\",\"h\":123,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-375w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_136/-414w.png\",\"h\":136,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-414w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_164/-250t.png\",\"h\":164,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_591,h_194/-250t-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true,\"f\":24054},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":194,\"w\":591,\"o\":true,\"f\":24054},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_47,y_0,scl_0.47422680412371/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_94,y_0,scl_0.94845360824742/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_64,y_0,scl_0.64432989690722/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_194,x_99,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":194}]}]},\"filetype\":\"png\",\"entityId\":1283536410}\" data-width=\"485\" data-alignment=\"center\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86n16-89548a3c-704c-4d19-905f-7f860fc13c51.png/v1/fill/w_500,h_164/divider_top__by_howlingcrown_dl86n16-250t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTk0IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2bjE2LTg5NTQ4YTNjLTcwNGMtNGQxOS05MDVmLTdmODYwZmMxM2M1MS5wbmciLCJ3aWR0aCI6Ijw9NTkxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.7ul4a_sAJ2HmZDcJlYpV7jN_Ez3Y83hW1ReheQ9UHvE\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86n16-89548a3c-704c-4d19-905f-7f860fc13c51.png/v1/fill/w_591,h_194/divider_top__by_howlingcrown_dl86n16-250t-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTk0IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2bjE2LTg5NTQ4YTNjLTcwNGMtNGQxOS05MDVmLTdmODYwZmMxM2M1MS5wbmciLCJ3aWR0aCI6Ijw9NTkxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.7ul4a_sAJ2HmZDcJlYpV7jN_Ez3Y83hW1ReheQ9UHvE 2x\" alt=\"Divider Top \" /></div>
</figure>
</div>
<h2 style=\"text-align: center;\">📦 Make an Inventory Tracker</h2>
<p class=\"empty-p\">&nbsp;</p>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":150,\"w\":49,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_98,h_297/-150-2x.png\",\"w\":98,\"h\":297}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_98,h_201,x_0,y_0,scl_1/-200h.png\",\"h\":201,\"w\":98,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_98,h_297/-200h-2x.png\",\"w\":98,\"h\":297}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_98,h_251,x_0,y_0,scl_1/-250t.png\",\"h\":251,\"w\":98,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_98,h_297/-250t-2x.png\",\"w\":98,\"h\":297}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true,\"f\":12775},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":297,\"w\":98,\"o\":true,\"f\":12775},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_47,scl_0.93877551020408/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_98,h_184,x_0,y_50,scl_1/-92s-2x.png\",\"w\":98,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_98,h_125,x_0,y_50,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_98,h_250,x_0,y_50,scl_1/-125s-2x.png\",\"w\":98,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1284669681}\" data-width=\"148\" data-alignment=\"left\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8uxgx-721e2abb-54e4-4bd6-865e-de7ea8abb4e6.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4dXhneC03MjFlMmFiYi01NGU0LTRiZDYtODY1ZS1kZTdlYThhYmI0ZTYucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.w7GRp_BSippOs6e8G4iC5iuCaan71E6GSa5giMd412c\" alt=\"Divider-vertical-5-reversed\" /></span></figure>
</div>
<p>An <strong>inventory tracker</strong> is required for all active characters.</p>
<p>This is where you track your character&rsquo;s progress, discoveries, and resources. You may also include personality notes or backstory if you wish.</p>
<h3 style=\"text-align: center;\">Mandatory Tracker Sections</h3>
<ul>
<li>
<p>Character Experience (Reputation)</p>
</li>
<li>
<p>Credits</p>
</li>
<li>
<p>Unlocked Planets</p>
</li>
<li>
<p>Items / Materials</p>
</li>
<li>
<p>Mounts</p>
</li>
<li>
<p>Pets</p>
</li>
<li>
<p>Link to your character\'s official post</p>
</li>
</ul>
<p class=\"empty-p\">&nbsp;</p>
<p>Once your tracker is complete, <strong>DM an admin</strong> so it can be linked to your character&rsquo;s official post.</p>
<h3 style=\"text-align: center;\">Accepted Tracker Formats</h3>
<ul>
<li>
<p>Google Docs or Sheets</p>
</li>
<li>
<p>Toyhouse profiles</p>
</li>
<li>
<p>DeviantArt journals</p>
</li>
<li>
<p>DeviantArt stash entries</p>
</li>
</ul>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283536294}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86mxy-87c09854-26e5-44b1-b54a-bf7d5b2ab258.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4Nm14eS04N2MwOTg1NC0yNmU1LTQ0YjEtYjU0YS1iZjdkNWIyYWIyNTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.JzarH0uSVsnQTYaNDHibdTSgx1grnLW5qf31vabhpBU\" alt=\"Divider Bottom\" /></span></figure>
</div>
<h2 style=\"text-align: center;\">🧭 Participating in the ARPG</h2>
<p>There are many ways to participate in Dreadfarer!</p>
<h3>&nbsp;</h3>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":24,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_80/-150-2x.png\",\"w\":300,\"h\":80}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_80,x_99,y_0,scl_1/-200h.png\",\"h\":80,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_80/-200h-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_80/-300w.png\",\"h\":48,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-300w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_60/-375w.png\",\"h\":60,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-375w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_66/-414w.png\",\"h\":66,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-414w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_80,x_105,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_80,x_105,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":80}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_80,x_105,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_80,x_105,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":80}]}]},\"filetype\":\"png\",\"entityId\":1283529745}\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></div>
</figure>
</div>
<h3 style=\"text-align: center;\">🌍 Expeditions</h3>
<p>Expeditions involve exploring planets to unlock information about them, including:</p>
<ul>
<li>
<p>Planet type</p>
</li>
<li>
<p>Available materials</p>
</li>
<li>
<p>Native pets and mounts</p>
</li>
</ul>
<p>Expeditions are the <strong>primary way to earn materials, pets, and mounts</strong>, and they also unlock additional contracts you can complete at any time.</p>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":24,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_80/-150-2x.png\",\"w\":300,\"h\":80}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_80,x_99,y_0,scl_1/-200h.png\",\"h\":80,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_80/-200h-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_80/-300w.png\",\"h\":48,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-300w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_60/-375w.png\",\"h\":60,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-375w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_66/-414w.png\",\"h\":66,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-414w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_80,x_105,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_80,x_105,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":80}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_80,x_105,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_80,x_105,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":80}]}]},\"filetype\":\"png\",\"entityId\":1283529745}\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></div>
</figure>
</div>
<h3 style=\"text-align: center;\">📜 Contracts</h3>
<p>Contracts are <strong>weekly prompts</strong> available to players.</p>
<ul>
<li>
<p>One contract is provided for free each week</p>
</li>
<li>
<p>Additional contracts can be unlocked through expeditions</p>
</li>
</ul>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":24,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_80/-150-2x.png\",\"w\":300,\"h\":80}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_80,x_99,y_0,scl_1/-200h.png\",\"h\":80,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_80/-200h-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_80/-300w.png\",\"h\":48,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-300w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_60/-375w.png\",\"h\":60,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-375w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_66/-414w.png\",\"h\":66,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-414w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_80,x_105,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_80,x_105,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":80}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_80,x_105,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_80,x_105,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":80}]}]},\"filetype\":\"png\",\"entityId\":1283529745}\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></div>
</figure>
</div>
<h3 style=\"text-align: center;\">🌠 Missions</h3>
<p>Missions are <strong>large-scale monthly community events</strong>.</p>
<ul>
<li>
<p>These events influence the state of the universe</p>
</li>
<li>
<p>Each mission includes multiple prompts</p>
</li>
<li>
<p>Completing a set number of prompts grants a <strong>grand prize </strong>once the mission is completed</p>
</li>
</ul>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":24,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_80/-150-2x.png\",\"w\":300,\"h\":80}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_80,x_99,y_0,scl_1/-200h.png\",\"h\":80,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_80/-200h-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_80/-300w.png\",\"h\":48,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-300w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_60/-375w.png\",\"h\":60,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-375w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_66/-414w.png\",\"h\":66,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-414w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_80,x_105,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_80,x_105,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":80}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_80,x_105,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_80,x_105,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":80}]}]},\"filetype\":\"png\",\"entityId\":1283529745}\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></div>
</figure>
</div>
<h3 style=\"text-align: center;\">🧭 Faction Prompts</h3>
<p>Faction prompts are used to <strong>rank up within a faction</strong>.</p>
<ul>
<li>
<p>These do <strong>not</strong> reward items, materials, pets, or mounts</p>
</li>
<li>
<p>They exist purely for <strong>rank progression and character development</strong></p>
</li>
</ul>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283074352}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span></figure>
</div>
<h2 style=\"text-align: center;\">💠 Earning Credits &amp; Reputation</h2>
<ul>
<li>
<p><strong>Credits</strong> are the official currency of Dreadfarer</p>
</li>
<li>
<p><strong>Reputation (REP)</strong> functions as experience</p>
</li>
</ul>
<p>Credits are used for:</p>
<ul>
<li>
<p>Crafting</p>
</li>
<li>
<p>Purchases</p>
</li>
<li>
<p>Other in-game mechanics</p>
</li>
</ul>
<p>Reputation is used to:</p>
<ul>
<li>
<p>Rank up your character</p>
</li>
<li>
<p>Unlock buffs and bonuses</p>
</li>
</ul>
<p>Credits and Reputation can be earned through:</p>
<ul>
<li>
<p>Expeditions</p>
</li>
<li>
<p>Contracts</p>
</li>
<li>
<p>Missions</p>
</li>
<li>
<p>Faction prompts</p>
</li>
</ul>
<p>More details can be found in the <a href=\"https://www.deviantart.com/hermescasp/journal/Credits-Reputation-system-1283264548\" rel=\"noopener noreferrer nofollow ugc\"><strong>Creative Rewards System</strong></a> post.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283522388}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86c7o-05155355-5d8f-4870-851a-9b80f2c29591.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NmM3by0wNTE1NTM1NS01ZDhmLTQ4NzAtODUxYS05YjgwZjJjMjk1OTEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.n6GyYrxX3vsH-9D_nGFwFnRb76jUm2mefPtJ4OdiIVg\" alt=\"Divider Bottom\" /></span></figure>
</div>
<h2 style=\"text-align: center;\">⚙️ Extra Game Mechanics</h2>
<h3>⚔️ Combat</h3>
<ul>
<li>
<p>Combat influences the <strong>rarity of rewards</strong></p>
</li>
<li>
<p>If combat is available in a mission or contract, it will be clearly stated</p>
</li>
<li>
<p>Combat can occur during expeditions, but <strong>does not grant rarity buffs</strong> there</p>
</li>
</ul>
<p>Combat effectiveness is based on:</p>
<ul>
<li>
<p>Weapon level</p>
</li>
<li>
<p>Damage output</p>
</li>
</ul>
<p>Higher damage output = better potential rewards.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":4,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_15/-150-2x.png\",\"w\":300,\"h\":15}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_15,x_149,y_0,scl_1/-200h.png\",\"h\":15,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-200h-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_15/-300w.png\",\"h\":8,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-300w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_9/-375w.png\",\"h\":9,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-375w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_10/-414w.png\",\"h\":10,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-414w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_15,x_49,y_0,scl_1/-250t.png\",\"h\":15,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-250t-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_15,x_146,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_15,x_146,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":15}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_15,x_146,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_15,x_146,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":15}]}]},\"filetype\":\"png\",\"entityId\":1284678197}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>🛠️ Crafting</h3>
<p>Materials obtained through gameplay can be crafted into items that:</p>
<ul>
<li>
<p>Provide buffs</p>
</li>
<li>
<p>Unlock new mechanics</p>
</li>
<li>
<p>Unlock new traits</p>
</li>
</ul>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":4,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_15/-150-2x.png\",\"w\":300,\"h\":15}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_15,x_149,y_0,scl_1/-200h.png\",\"h\":15,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-200h-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_15/-300w.png\",\"h\":8,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-300w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_9/-375w.png\",\"h\":9,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-375w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_10/-414w.png\",\"h\":10,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-414w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_15,x_49,y_0,scl_1/-250t.png\",\"h\":15,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-250t-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_15,x_146,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_15,x_146,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":15}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_15,x_146,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_15,x_146,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":15}]}]},\"filetype\":\"png\",\"entityId\":1284678197}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>🏅 Custom Rank</h3>
<p>A <strong>Custom Rank</strong> is the highest honor a character can achieve.</p>
<ul>
<li>
<p>Earned only after reaching the highest faction rank</p>
</li>
<li>
<p>Can be named freely, as long as it is appropriate and fits the universe</p>
</li>
</ul>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":4,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_15/-150-2x.png\",\"w\":300,\"h\":15}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_15,x_149,y_0,scl_1/-200h.png\",\"h\":15,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-200h-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_15/-300w.png\",\"h\":8,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-300w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_9/-375w.png\",\"h\":9,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-375w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_10/-414w.png\",\"h\":10,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-414w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_15,x_49,y_0,scl_1/-250t.png\",\"h\":15,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-250t-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_15,x_146,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_15,x_146,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":15}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_15,x_146,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_15,x_146,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":15}]}]},\"filetype\":\"png\",\"entityId\":1284678197}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>📦 Collection</h3>
<p>Each planet contains <strong>1&ndash;3 unique collectible items</strong> exclusive to that planet.<br />These items are unlocked as you explore and may or may not provide buffs.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":4,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_15/-150-2x.png\",\"w\":300,\"h\":15}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_15,x_149,y_0,scl_1/-200h.png\",\"h\":15,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-200h-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_15/-300w.png\",\"h\":8,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-300w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_9/-375w.png\",\"h\":9,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-375w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_10/-414w.png\",\"h\":10,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-414w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_15,x_49,y_0,scl_1/-250t.png\",\"h\":15,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-250t-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_15,x_146,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_15,x_146,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":15}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_15,x_146,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_15,x_146,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":15}]}]},\"filetype\":\"png\",\"entityId\":1284678197}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>🪐 Planet Naming</h3>
<p>Some planets are undiscovered and unnamed.</p>
<ul>
<li>
<p>Visiting a planet multiple times allows you to fully unlock it</p>
</li>
<li>
<p>Once unlocked, the discovering player may <strong>name the planet</strong></p>
</li>
<li>
<p>If you discovered a planet, you may visit it anytime, regardless of the current galaxy</p>
</li>
</ul>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":4,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_15/-150-2x.png\",\"w\":300,\"h\":15}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_15,x_149,y_0,scl_1/-200h.png\",\"h\":15,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-200h-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_15/-300w.png\",\"h\":8,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-300w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_9/-375w.png\",\"h\":9,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-375w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_10/-414w.png\",\"h\":10,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-414w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_15,x_49,y_0,scl_1/-250t.png\",\"h\":15,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-250t-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_15,x_146,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_15,x_146,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":15}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_15,x_146,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_15,x_146,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":15}]}]},\"filetype\":\"png\",\"entityId\":1284678197}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>🌌 Galaxy Swaps</h3>
<ul>
<li>
<p>Galaxies rotate <strong>monthly</strong></p>
</li>
<li>
<p>If more than one galaxy is unlocked, players may vote on which one to explore</p>
</li>
<li>
<p>The selected galaxy determines:</p>
<ul>
<li>
<p>Which planets are accessible</p>
</li>
<li>
<p>Which materials are available for that month</p>
</li>
</ul>
</li>
</ul>
<p class=\"empty-p\">&nbsp;</p>
<p>Dreadfarer is run by <a href=\"https://www.deviantart.com/hermescasp\" type=\"\" data-da-type=\"da-mention\" data-user=\"{\">@Hermescasp</a> and <a href=\"https://www.deviantart.com/howlingcrown\" type=\"\" data-da-type=\"da-mention\" data-user=\"{\">@HowlingCrown</a></p>
<p class=\"empty-p\">&nbsp;</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":38,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_128/-150-2x.png\",\"w\":300,\"h\":128}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_44,y_0,scl_0.78125/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_128/-200h-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_128/-300w.png\",\"h\":77,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-300w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_96/-375w.png\",\"h\":96,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-375w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_106/-414w.png\",\"h\":106,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-414w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true,\"f\":3379},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":128,\"w\":500,\"o\":true,\"f\":3379},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_67,y_0,scl_0.71875/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_128,x_93,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":128}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_91,y_0,scl_0.9765625/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_128,x_93,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":128}]}]},\"filetype\":\"png\",\"entityId\":1283528130}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86gn6-ac91e695-db36-49ef-b5e8-215f1ff9e9f8.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NmduNi1hYzkxZTY5NS1kYjM2LTQ5ZWYtYjVlOC0yMTVmMWZmOWU5ZjgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.P-21SDpofJYh3pJu07iOE4O9TBv5kJJVSBbo3hOVnIo\" alt=\"Artemis-divider\" /></span></figure>
</div>', NULL, '1', '2026-02-23 04:23:02', '2026-02-23 06:06:11', '<div class=\"B2Wm85\">
-150.png\",\"h\":27,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_187/-150-2x.png\",\"w\":300,\"h\":187}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_129,y_0,scl_0.53475935828877/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_107/-200h-2x.png\",\"w\":600,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_187/-300w.png\",\"h\":54,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_187/-300w-2x.png\",\"w\":600,\"h\":187}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_67/-375w.png\",\"h\":67,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_134/-375w-2x.png\",\"w\":750,\"h\":134}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_74/-414w.png\",\"h\":74,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_828,h_148/-414w-2x.png\",\"w\":828,\"h\":148}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_100,x_29,y_0,scl_0.53475935828877/-250t.png\",\"h\":100,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1000,h_179/-250t-2x.png\",\"w\":1000,\"h\":179}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_700,h_125/-350t.png\",\"h\":125,\"w\":700,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1047,h_187/-350t-2x.png\",\"w\":1047,\"h\":187}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_800,h_143/-400t.png\",\"h\":143,\"w\":800,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1047,h_187/-400t-2x.png\",\"w\":1047,\"h\":187}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_1047,h_187/-fullview.png\",\"h\":187,\"w\":1047,\"o\":true,\"f\":39555},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_1047,h_187/-fullview.png\",\"h\":187,\"w\":1047,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":187,\"w\":1047,\"o\":true,\"f\":39555},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_106,y_0,scl_0.49197860962567/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_212,y_0,scl_0.98395721925134/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_144,y_0,scl_0.66844919786096/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_187,x_215,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":187}]}]},\"filetype\":\"png\",\"entityId\":1284686405}\" data-alignment=\"center\"&gt;
<div><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8vadh-f7fac62a-3d85-4958-bee1-3e5a5cdb9245.png/v1/fill/w_800,h_143/get_started_by_howlingcrown_dl8vadh-400t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTg3IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDh2YWRoLWY3ZmFjNjJhLTNkODUtNDk1OC1iZWUxLTNlNWE1Y2RiOTI0NS5wbmciLCJ3aWR0aCI6Ijw9MTA0NyJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.YC5kMw2DKxc-FLwgLE0YXKRgYW8RNE-6XG81PSm07f4\" alt=\"Get-started\" /></div>

</div>
<h2 style=\"text-align:center;\">🌑 What Is Dreadfarer?</h2>
<p class=\"empty-p\"> </p>
<div class=\"B2Wm85 DPW1hJ\">
-150.png\",\"h\":150,\"w\":80,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_121,h_228/-150-2x.png\",\"w\":121,\"h\":228}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/fill/w_106,h_200/-200h.png\",\"h\":200,\"w\":106,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_121,h_228/-200h-2x.png\",\"w\":121,\"h\":228}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true,\"f\":2862},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":228,\"w\":121,\"o\":true,\"f\":2862},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_20,scl_0.7603305785124/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_121,h_184,x_0,y_27,scl_1/-92s-2x.png\",\"w\":121,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_121,h_125,x_0,y_27,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_121,h_228,x_0,y_27,scl_1/-125s-2x.png\",\"w\":121,\"h\":228}]}]},\"filetype\":\"png\",\"entityId\":1283434861}\" data-width=\"100\" data-alignment=\"left\"&gt;
<div><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84god-d860403f-cdcb-45c8-9d2b-c28236844a21.png/v1/fill/w_106,h_200/artemis_decal_by_howlingcrown_dl84god-200h.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI4IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0Z29kLWQ4NjA0MDNmLWNkY2ItNDVjOC05ZDJiLWMyODIzNjg0NGEyMS5wbmciLCJ3aWR0aCI6Ijw9MTIxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.OQ_GGZZsR3N_OPUfcMGAMN_pmOfeoofFcUt77xMULh4\" alt=\"Artemis-decal\" /></div>

</div>
<p>Dreadfarer is a space-themed ARPG focused on uncovering unknown worlds, completing contracts, and influencing an evolving universe. Players take part in expeditions, missions, and faction work while developing their characters over time.</p>
<p class=\"empty-p\"> </p>
<p>The playable species of Dreadfarer is a <strong>semi-closed species</strong> known as the <strong>Voidi</strong>.</p>
<p class=\"empty-p\"> </p>
<p>Voidi are a lore-heavy species native to an extremely hostile environment, with multiple subspecies shaped by survival, adaptation, and artificial interference. Because Voidi are deeply integrated into the setting and mechanics of the game, creation rules exist to keep the species cohesive while still allowing for creativity and individuality.</p>
<div class=\"B2Wm85\">
-150.png\",\"h\":49,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_194/-150-2x.png\",\"w\":300,\"h\":194}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_1,y_0,scl_0.51546391752577/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_591,h_194/-200h-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_194/-300w.png\",\"h\":98,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-300w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_123/-375w.png\",\"h\":123,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-375w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_136/-414w.png\",\"h\":136,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-414w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_164/-250t.png\",\"h\":164,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_591,h_194/-250t-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true,\"f\":24054},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":194,\"w\":591,\"o\":true,\"f\":24054},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_47,y_0,scl_0.47422680412371/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_94,y_0,scl_0.94845360824742/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_64,y_0,scl_0.64432989690722/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_194,x_99,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":194}]}]},\"filetype\":\"png\",\"entityId\":1283536410}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86n16-89548a3c-704c-4d19-905f-7f860fc13c51.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4Nm4xNi04OTU0OGEzYy03MDRjLTRkMTktOTA1Zi03Zjg2MGZjMTNjNTEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.fDzAsd9bux4jGVCkzxQnKhQCOGcS90FDIszsNubDxZU\" alt=\"Divider Top\" /></span>
</div>
<h2 style=\"text-align:center;\">🧬 How Do I Get a Voidi?</h2>
<h4>Before creating a Voidi, you <u><strong>must</strong></u><u> </u>read:</h4>
<ul>
<li>
<p>The <a href=\"https://www.deviantart.com/hermescasp/journal/Rules-1283641358\"><strong>Group Rules</strong></a></p>
</li>
<li>
<p>The <a href=\"https://www.deviantart.com/hermescasp/journal/Species-Anatomy-1283218183\"><strong>Voidi Species Anatomy &amp; Creation Guide</strong></a></p>
</li>
</ul>
<p>Because Voidi are semi-closed:</p>
<ul>
<li>
<p><strong>Certain subspecies are free to create</strong>, as long as you follow their specific creation guidelines and all group rules.</p>
</li>
<li>
<p>As long as the subspecies you want is <strong>not limited</strong>, you may create one for free.</p>
</li>
</ul>
<div class=\"B2Wm85 DPW1hJ\">
-150.png\",\"h\":135,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_270/-150-2x.png\",\"w\":300,\"h\":270}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/fill/w_222,h_200/-200h.png\",\"h\":200,\"w\":222,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_300,h_270/-200h-2x.png\",\"w\":300,\"h\":270}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_278,h_250/-250t.png\",\"h\":250,\"w\":278,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_300,h_270/-250t-2x.png\",\"w\":300,\"h\":270}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true,\"f\":8525},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_300,h_270/-fullview.png\",\"h\":270,\"w\":300,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":270,\"w\":300,\"o\":true,\"f\":8525},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_3,y_0,scl_0.34074074074074/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_5,y_0,scl_0.68148148148148/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_3,y_0,scl_0.46296296296296/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_250,x_7,y_0,scl_0.92592592592593/-125s-2x.png\",\"w\":250,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1283537224}\" data-width=\"67\" data-alignment=\"left\"&gt;
<div><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86nns-5fce4dc3-72a9-4376-a933-0b9948864e25.png/v1/fit/w_150,h_150/artemis_lines_by_howlingcrown_dl86nns-150.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjcwIiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2bm5zLTVmY2U0ZGMzLTcyYTktNDM3Ni1hOTMzLTBiOTk0ODg2NGUyNS5wbmciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.W_Ebes9bSdWBqlBewQmsDoj5la5sa_2ZxMPEOgyi93g\" alt=\"Artemis-lines\" /></div>

</div>
<h3>Limited Subspecies</h3>
<p>Limited subspecies <strong>cannot</strong> be freely made. These may only be obtained through:</p>
<ul>
<li>
<p>In-game mechanics</p>
</li>
<li>
<p>Raffles</p>
</li>
<li>
<p>MYO (Make-Your-Own) sales</p>
</li>
</ul>
<div class=\"B2Wm85 DPW1hJ\">
-150.png\",\"h\":150,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_300/-150-2x.png\",\"w\":300,\"h\":300}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/fill/w_200,h_200/-200h.png\",\"h\":200,\"w\":200,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_400,h_400/-200h-2x.png\",\"w\":400,\"h\":400}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_900/-300w.png\",\"h\":300,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_1280/-300w-2x.png\",\"w\":600,\"h\":1280}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_375/-375w.png\",\"h\":375,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_750/-375w-2x.png\",\"w\":750,\"h\":750}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_414/-414w.png\",\"h\":414,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_828,h_828/-414w-2x.png\",\"w\":828,\"h\":828}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_250,h_250/-250t.png\",\"h\":250,\"w\":250,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_500/-250t-2x.png\",\"w\":500,\"h\":500}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_350,h_350/-350t.png\",\"h\":350,\"w\":350,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_700,h_700/-350t-2x.png\",\"w\":700,\"h\":700}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_400,h_400/-400t.png\",\"h\":400,\"w\":400,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_800,h_800/-400t-2x.png\",\"w\":800,\"h\":800}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_894,h_894/-pre.png\",\"h\":894,\"w\":894,\"o\":true,\"f\":35219,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_894,h_894/-pre-2x.png\",\"w\":894,\"h\":894}]},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_894,h_894/-pre.png\",\"h\":894,\"w\":894,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_894,h_894/-pre-2x.png\",\"w\":894,\"h\":894}]},{\"t\":\"fullview\",\"r\":0,\"c\":\"/v1/fill/w_1280,h_1280/-fullview.png\",\"h\":1280,\"w\":1280,\"o\":true,\"f\":35219},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_0,scl_0.061333333333333/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_0,y_0,scl_0.12266666666667/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_0,y_0,scl_0.083333333333333/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_250,x_0,y_0,scl_0.16666666666667/-125s-2x.png\",\"w\":250,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1283036860}\" data-width=\"72\" data-alignment=\"left\"&gt;
<div><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7vxks-ab432fd7-deea-4d07-bb58-6e1e0762b6ad.png/v1/fit/w_150,h_150/dreadfarer_logo_large_by_howlingcrown_dl7vxks-150.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3dnhrcy1hYjQzMmZkNy1kZWVhLTRkMDctYmI1OC02ZTFlMDc2MmI2YWQucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.aEvrPL56AYKTrhXTIyFax6ysWRqqHS7cfWf90gaS2CM\" alt=\"Dreadfarer-logo-large\" /></div>

</div>
<h3>Pre-Made Designs</h3>
<p>Pre-made Voidi designs are occasionally available through:</p>
<ul>
<li>
<p>Auctions</p>
</li>
<li>
<p>Raffles</p>
</li>
</ul>
<p>Trading is also permitted for:</p>
<ul>
<li>
<p>Pre-made designs</p>
</li>
<li>
<p>Limited subspecies slots</p>
</li>
</ul>
<p>All trades must follow group rules.</p>
<div class=\"B2Wm85\">
-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283522388}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86c7o-05155355-5d8f-4870-851a-9b80f2c29591.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NmM3by0wNTE1NTM1NS01ZDhmLTQ4NzAtODUxYS05YjgwZjJjMjk1OTEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.n6GyYrxX3vsH-9D_nGFwFnRb76jUm2mefPtJ4OdiIVg\" alt=\"Divider Bottom\" /></span>
</div>
<h2 style=\"text-align:center;\">🚀 Getting Started</h2>
<p>Once you have a Voidi design ready:</p>
<ol>
<li>
<p><strong>DM one of the group owners for approval</strong></p>
</li>
<li>
<p>After approval, the group’s admin account will create an <strong>official character post</strong></p>
</li>
<li>
<p>This post acts as your character’s canon reference and must be linked anywhere you use the character (prompts, expeditions, missions, etc.)</p>
</li>
</ol>
<div class=\"B2Wm85\">
-150.png\",\"h\":49,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_194/-150-2x.png\",\"w\":300,\"h\":194}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_1,y_0,scl_0.51546391752577/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_591,h_194/-200h-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_194/-300w.png\",\"h\":98,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-300w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_123/-375w.png\",\"h\":123,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-375w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_136/-414w.png\",\"h\":136,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-414w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_164/-250t.png\",\"h\":164,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_591,h_194/-250t-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true,\"f\":24054},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":194,\"w\":591,\"o\":true,\"f\":24054},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_47,y_0,scl_0.47422680412371/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_94,y_0,scl_0.94845360824742/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_64,y_0,scl_0.64432989690722/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_194,x_99,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":194}]}]},\"filetype\":\"png\",\"entityId\":1283536410}\" data-width=\"485\" data-alignment=\"center\"&gt;
<div><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86n16-89548a3c-704c-4d19-905f-7f860fc13c51.png/v1/fill/w_500,h_164/divider_top__by_howlingcrown_dl86n16-250t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTk0IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2bjE2LTg5NTQ4YTNjLTcwNGMtNGQxOS05MDVmLTdmODYwZmMxM2M1MS5wbmciLCJ3aWR0aCI6Ijw9NTkxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.7ul4a_sAJ2HmZDcJlYpV7jN_Ez3Y83hW1ReheQ9UHvE\" alt=\"Divider Top\" /></div>

</div>
<h2 style=\"text-align:center;\">📦 Make an Inventory Tracker</h2>
<p class=\"empty-p\"> </p>
<div class=\"B2Wm85 DPW1hJ\">
-150.png\",\"h\":150,\"w\":49,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_98,h_297/-150-2x.png\",\"w\":98,\"h\":297}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_98,h_201,x_0,y_0,scl_1/-200h.png\",\"h\":201,\"w\":98,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_98,h_297/-200h-2x.png\",\"w\":98,\"h\":297}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_98,h_251,x_0,y_0,scl_1/-250t.png\",\"h\":251,\"w\":98,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_98,h_297/-250t-2x.png\",\"w\":98,\"h\":297}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true,\"f\":12775},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":297,\"w\":98,\"o\":true,\"f\":12775},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_47,scl_0.93877551020408/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_98,h_184,x_0,y_50,scl_1/-92s-2x.png\",\"w\":98,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_98,h_125,x_0,y_50,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_98,h_250,x_0,y_50,scl_1/-125s-2x.png\",\"w\":98,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1284669681}\" data-width=\"148\" data-alignment=\"left\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8uxgx-721e2abb-54e4-4bd6-865e-de7ea8abb4e6.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4dXhneC03MjFlMmFiYi01NGU0LTRiZDYtODY1ZS1kZTdlYThhYmI0ZTYucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.w7GRp_BSippOs6e8G4iC5iuCaan71E6GSa5giMd412c\" alt=\"Divider-vertical-5-reversed\" /></span>
</div>
<p>An <strong>inventory tracker</strong> is required for all active characters.</p>
<p>This is where you track your character’s progress, discoveries, and resources. You may also include personality notes or backstory if you wish.</p>
<h3 style=\"text-align:center;\">Mandatory Tracker Sections</h3>
<ul>
<li>
<p>Character Experience (Reputation)</p>
</li>
<li>
<p>Credits</p>
</li>
<li>
<p>Unlocked Planets</p>
</li>
<li>
<p>Items / Materials</p>
</li>
<li>
<p>Mounts</p>
</li>
<li>
<p>Pets</p>
</li>
<li>
<p>Link to your character\'s official post</p>
</li>
</ul>
<p class=\"empty-p\"> </p>
<p>Once your tracker is complete, <strong>DM an admin</strong> so it can be linked to your character’s official post.</p>
<h3 style=\"text-align:center;\">Accepted Tracker Formats</h3>
<ul>
<li>
<p>Google Docs or Sheets</p>
</li>
<li>
<p>Toyhouse profiles</p>
</li>
<li>
<p>DeviantArt journals</p>
</li>
<li>
<p>DeviantArt stash entries</p>
</li>
</ul>
<div class=\"B2Wm85\">
-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283536294}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86mxy-87c09854-26e5-44b1-b54a-bf7d5b2ab258.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4Nm14eS04N2MwOTg1NC0yNmU1LTQ0YjEtYjU0YS1iZjdkNWIyYWIyNTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.JzarH0uSVsnQTYaNDHibdTSgx1grnLW5qf31vabhpBU\" alt=\"Divider Bottom\" /></span>
</div>
<h2 style=\"text-align:center;\">🧭 Participating in the ARPG</h2>
<p>There are many ways to participate in Dreadfarer!</p>
<h3> </h3>
<div class=\"B2Wm85 DPW1hJ\">
-150.png\",\"h\":24,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_80/-150-2x.png\",\"w\":300,\"h\":80}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_80,x_99,y_0,scl_1/-200h.png\",\"h\":80,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_80/-200h-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_80/-300w.png\",\"h\":48,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-300w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_60/-375w.png\",\"h\":60,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-375w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_66/-414w.png\",\"h\":66,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-414w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_80,x_105,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_80,x_105,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":80}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_80,x_105,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_80,x_105,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":80}]}]},\"filetype\":\"png\",\"entityId\":1283529745}\" data-alignment=\"left\"&gt;
<div><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></div>

</div>
<h3 style=\"text-align:center;\">🌍 Expeditions</h3>
<p>Expeditions involve exploring planets to unlock information about them, including:</p>
<ul>
<li>
<p>Planet type</p>
</li>
<li>
<p>Available materials</p>
</li>
<li>
<p>Native pets and mounts</p>
</li>
</ul>
<p>Expeditions are the <strong>primary way to earn materials, pets, and mounts</strong>, and they also unlock additional contracts you can complete at any time.</p>
<div class=\"B2Wm85 DPW1hJ\">
-150.png\",\"h\":24,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_80/-150-2x.png\",\"w\":300,\"h\":80}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_80,x_99,y_0,scl_1/-200h.png\",\"h\":80,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_80/-200h-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_80/-300w.png\",\"h\":48,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-300w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_60/-375w.png\",\"h\":60,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-375w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_66/-414w.png\",\"h\":66,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-414w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_80,x_105,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_80,x_105,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":80}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_80,x_105,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_80,x_105,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":80}]}]},\"filetype\":\"png\",\"entityId\":1283529745}\" data-alignment=\"left\"&gt;
<div><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></div>

</div>
<h3 style=\"text-align:center;\">📜 Contracts</h3>
<p>Contracts are <strong>weekly prompts</strong> available to players.</p>
<ul>
<li>
<p>One contract is provided for free each week</p>
</li>
<li>
<p>Additional contracts can be unlocked through expeditions</p>
</li>
</ul>
<div class=\"B2Wm85 DPW1hJ\">
-150.png\",\"h\":24,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_80/-150-2x.png\",\"w\":300,\"h\":80}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_80,x_99,y_0,scl_1/-200h.png\",\"h\":80,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_80/-200h-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_80/-300w.png\",\"h\":48,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-300w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_60/-375w.png\",\"h\":60,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-375w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_66/-414w.png\",\"h\":66,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-414w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_80,x_105,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_80,x_105,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":80}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_80,x_105,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_80,x_105,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":80}]}]},\"filetype\":\"png\",\"entityId\":1283529745}\" data-alignment=\"left\"&gt;
<div><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></div>

</div>
<h3 style=\"text-align:center;\">🌠 Missions</h3>
<p>Missions are <strong>large-scale monthly community events</strong>.</p>
<ul>
<li>
<p>These events influence the state of the universe</p>
</li>
<li>
<p>Each mission includes multiple prompts</p>
</li>
<li>
<p>Completing a set number of prompts grants a <strong>grand prize </strong>once the mission is completed</p>
</li>
</ul>
<div class=\"B2Wm85 DPW1hJ\">
-150.png\",\"h\":24,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_80/-150-2x.png\",\"w\":300,\"h\":80}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_80,x_99,y_0,scl_1/-200h.png\",\"h\":80,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_80/-200h-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_80/-300w.png\",\"h\":48,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-300w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_60/-375w.png\",\"h\":60,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-375w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_66/-414w.png\",\"h\":66,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-414w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_80,x_105,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_80,x_105,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":80}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_80,x_105,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_80,x_105,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":80}]}]},\"filetype\":\"png\",\"entityId\":1283529745}\" data-alignment=\"left\"&gt;
<div><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></div>

</div>
<h3 style=\"text-align:center;\">🧭 Faction Prompts</h3>
<p>Faction prompts are used to <strong>rank up within a faction</strong>.</p>
<ul>
<li>
<p>These do <strong>not</strong> reward items, materials, pets, or mounts</p>
</li>
<li>
<p>They exist purely for <strong>rank progression and character development</strong></p>
</li>
</ul>
<div class=\"B2Wm85\">
-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283074352}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span>
</div>
<h2 style=\"text-align:center;\">💠 Earning Credits &amp; Reputation</h2>
<ul>
<li>
<p><strong>Credits</strong> are the official currency of Dreadfarer</p>
</li>
<li>
<p><strong>Reputation (REP)</strong> functions as experience</p>
</li>
</ul>
<p>Credits are used for:</p>
<ul>
<li>
<p>Crafting</p>
</li>
<li>
<p>Purchases</p>
</li>
<li>
<p>Other in-game mechanics</p>
</li>
</ul>
<p>Reputation is used to:</p>
<ul>
<li>
<p>Rank up your character</p>
</li>
<li>
<p>Unlock buffs and bonuses</p>
</li>
</ul>
<p>Credits and Reputation can be earned through:</p>
<ul>
<li>
<p>Expeditions</p>
</li>
<li>
<p>Contracts</p>
</li>
<li>
<p>Missions</p>
</li>
<li>
<p>Faction prompts</p>
</li>
</ul>
<p>More details can be found in the <a href=\"https://www.deviantart.com/hermescasp/journal/Credits-Reputation-system-1283264548\"><strong>Creative Rewards System</strong></a> post.</p>
<div class=\"B2Wm85\">
-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283522388}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86c7o-05155355-5d8f-4870-851a-9b80f2c29591.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NmM3by0wNTE1NTM1NS01ZDhmLTQ4NzAtODUxYS05YjgwZjJjMjk1OTEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.n6GyYrxX3vsH-9D_nGFwFnRb76jUm2mefPtJ4OdiIVg\" alt=\"Divider Bottom\" /></span>
</div>
<h2 style=\"text-align:center;\">⚙️ Extra Game Mechanics</h2>
<h3>⚔️ Combat</h3>
<ul>
<li>
<p>Combat influences the <strong>rarity of rewards</strong></p>
</li>
<li>
<p>If combat is available in a mission or contract, it will be clearly stated</p>
</li>
<li>
<p>Combat can occur during expeditions, but <strong>does not grant rarity buffs</strong> there</p>
</li>
</ul>
<p>Combat effectiveness is based on:</p>
<ul>
<li>
<p>Weapon level</p>
</li>
<li>
<p>Damage output</p>
</li>
</ul>
<p>Higher damage output = better potential rewards.</p>
<div class=\"B2Wm85\">
-150.png\",\"h\":4,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_15/-150-2x.png\",\"w\":300,\"h\":15}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_15,x_149,y_0,scl_1/-200h.png\",\"h\":15,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-200h-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_15/-300w.png\",\"h\":8,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-300w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_9/-375w.png\",\"h\":9,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-375w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_10/-414w.png\",\"h\":10,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-414w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_15,x_49,y_0,scl_1/-250t.png\",\"h\":15,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-250t-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_15,x_146,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_15,x_146,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":15}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_15,x_146,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_15,x_146,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":15}]}]},\"filetype\":\"png\",\"entityId\":1284678197}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span>
</div>
<h3>🛠️ Crafting</h3>
<p>Materials obtained through gameplay can be crafted into items that:</p>
<ul>
<li>
<p>Provide buffs</p>
</li>
<li>
<p>Unlock new mechanics</p>
</li>
<li>
<p>Unlock new traits</p>
</li>
</ul>
<div class=\"B2Wm85\">
-150.png\",\"h\":4,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_15/-150-2x.png\",\"w\":300,\"h\":15}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_15,x_149,y_0,scl_1/-200h.png\",\"h\":15,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-200h-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_15/-300w.png\",\"h\":8,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-300w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_9/-375w.png\",\"h\":9,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-375w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_10/-414w.png\",\"h\":10,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-414w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_15,x_49,y_0,scl_1/-250t.png\",\"h\":15,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-250t-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_15,x_146,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_15,x_146,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":15}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_15,x_146,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_15,x_146,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":15}]}]},\"filetype\":\"png\",\"entityId\":1284678197}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span>
</div>
<h3>🏅 Custom Rank</h3>
<p>A <strong>Custom Rank</strong> is the highest honor a character can achieve.</p>
<ul>
<li>
<p>Earned only after reaching the highest faction rank</p>
</li>
<li>
<p>Can be named freely, as long as it is appropriate and fits the universe</p>
</li>
</ul>
<div class=\"B2Wm85\">
-150.png\",\"h\":4,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_15/-150-2x.png\",\"w\":300,\"h\":15}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_15,x_149,y_0,scl_1/-200h.png\",\"h\":15,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-200h-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_15/-300w.png\",\"h\":8,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-300w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_9/-375w.png\",\"h\":9,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-375w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_10/-414w.png\",\"h\":10,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-414w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_15,x_49,y_0,scl_1/-250t.png\",\"h\":15,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-250t-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_15,x_146,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_15,x_146,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":15}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_15,x_146,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_15,x_146,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":15}]}]},\"filetype\":\"png\",\"entityId\":1284678197}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span>
</div>
<h3>📦 Collection</h3>
<p>Each planet contains <strong>1–3 unique collectible items</strong> exclusive to that planet.<br />These items are unlocked as you explore and may or may not provide buffs.</p>
<div class=\"B2Wm85\">
-150.png\",\"h\":4,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_15/-150-2x.png\",\"w\":300,\"h\":15}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_15,x_149,y_0,scl_1/-200h.png\",\"h\":15,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-200h-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_15/-300w.png\",\"h\":8,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-300w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_9/-375w.png\",\"h\":9,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-375w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_10/-414w.png\",\"h\":10,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-414w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_15,x_49,y_0,scl_1/-250t.png\",\"h\":15,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-250t-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_15,x_146,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_15,x_146,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":15}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_15,x_146,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_15,x_146,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":15}]}]},\"filetype\":\"png\",\"entityId\":1284678197}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span>
</div>
<h3>🪐 Planet Naming</h3>
<p>Some planets are undiscovered and unnamed.</p>
<ul>
<li>
<p>Visiting a planet multiple times allows you to fully unlock it</p>
</li>
<li>
<p>Once unlocked, the discovering player may <strong>name the planet</strong></p>
</li>
<li>
<p>If you discovered a planet, you may visit it anytime, regardless of the current galaxy</p>
</li>
</ul>
<div class=\"B2Wm85\">
-150.png\",\"h\":4,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_15/-150-2x.png\",\"w\":300,\"h\":15}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_15,x_149,y_0,scl_1/-200h.png\",\"h\":15,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-200h-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_15/-300w.png\",\"h\":8,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-300w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_9/-375w.png\",\"h\":9,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-375w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_10/-414w.png\",\"h\":10,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_15/-414w-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_15,x_49,y_0,scl_1/-250t.png\",\"h\":15,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_15/-250t-2x.png\",\"w\":600,\"h\":15}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_15/-fullview.png\",\"h\":15,\"w\":600,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":15,\"w\":600,\"o\":true,\"f\":345},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_15,x_146,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_15,x_146,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":15}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_15,x_146,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_15,x_146,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":15}]}]},\"filetype\":\"png\",\"entityId\":1284678197}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span>
</div>
<h3>🌌 Galaxy Swaps</h3>
<ul>
<li>
<p>Galaxies rotate <strong>monthly</strong></p>
</li>
<li>
<p>If more than one galaxy is unlocked, players may vote on which one to explore</p>
</li>
<li>
<p>The selected galaxy determines:</p>
<ul>
<li>
<p>Which planets are accessible</p>
</li>
<li>
<p>Which materials are available for that month</p>
</li>
</ul>
</li>
</ul>
<p class=\"empty-p\"> </p>
<p>Dreadfarer is run by <a href=\"https://www.deviantart.com/hermescasp\"><a href=\"http://127.0.0.1:8000/user/Hermescasp\" class=\"display-user\" style=\"color: #F9E092;\">Hermescasp</a></a> and <a href=\"https://www.deviantart.com/howlingcrown\">@HowlingCrown</a></p>
<p class=\"empty-p\"> </p>
<div class=\"B2Wm85\">
-150.png\",\"h\":38,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_128/-150-2x.png\",\"w\":300,\"h\":128}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_44,y_0,scl_0.78125/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_128/-200h-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_128/-300w.png\",\"h\":77,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-300w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_96/-375w.png\",\"h\":96,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-375w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_106/-414w.png\",\"h\":106,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-414w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true,\"f\":3379},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":128,\"w\":500,\"o\":true,\"f\":3379},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_67,y_0,scl_0.71875/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_128,x_93,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":128}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_91,y_0,scl_0.9765625/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_128,x_93,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":128}]}]},\"filetype\":\"png\",\"entityId\":1283528130}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86gn6-ac91e695-db36-49ef-b5e8-215f1ff9e9f8.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NmduNi1hYzkxZTY5NS1kYjM2LTQ5ZWYtYjVlOC0yMTVmMWZmOWU5ZjgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.P-21SDpofJYh3pJu07iOE4O9TBv5kJJVSBbo3hOVnIo\" alt=\"Artemis-divider\" /></span>
</div>', '0'),
('12', 'currency', 'Credits &amp; Reputation', 'Learn how Credits and Reputation work, how to earn them, and where to spend them.', '<h2 style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86nns-5fce4dc3-72a9-4376-a933-0b9948864e25.png/v1/fit/w_150,h_150/artemis_lines_by_howlingcrown_dl86nns-150.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjcwIiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2bm5zLTVmY2U0ZGMzLTcyYTktNDM3Ni1hOTMzLTBiOTk0ODg2NGUyNS5wbmciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.W_Ebes9bSdWBqlBewQmsDoj5la5sa_2ZxMPEOgyi93g\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86nns-5fce4dc3-72a9-4376-a933-0b9948864e25.png/v1/fit/w_300,h_270/artemis_lines_by_howlingcrown_dl86nns-150-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjcwIiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2bm5zLTVmY2U0ZGMzLTcyYTktNDM3Ni1hOTMzLTBiOTk0ODg2NGUyNS5wbmciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.W_Ebes9bSdWBqlBewQmsDoj5la5sa_2ZxMPEOgyi93g 2x\" alt=\"Artemis-lines\" /><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" />Creative Rewards System</h2>
<p>Dreadfarer is built around player creativity. Rewards are based on the <strong>effort and care</strong> put into a piece&mdash;not the medium used.</p>
<p>Writing and art are treated as <strong>equal forms of creative expression</strong>. Some players prefer to write, others to draw, and neither should be punished or favored for that choice. This system exists to ensure fair progression for all creators.</p>
<p>The following table applies to <strong>Expeditions, Faction Prompts, and Contracts</strong>.</p>
<h2 style=\"text-align: center;\">📝 Writing Rewards</h2>
<h2 style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></h2>
<h3>Base Rate</h3>
<ul>
<li>
<p><strong>1,000 words</strong> &rarr; <strong>20 Credits | 10 REP<br /></strong></p>
<h2 style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></h2>
</li>
</ul>
<h3>Word Count Bonuses</h3>
<ul>
<li>
<p>Every <strong>+100 words up to 2,000</strong><br />&rarr; <strong>+3 Credits | +1 REP</strong></p>
</li>
<li>
<p>Every <strong>+500 words after 2,000</strong><br />&rarr; <strong>+7 Credits | +3 REP<br /></strong></p>
<h2 style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></h2>
<p><strong>&nbsp;</strong></p>
</li>
</ul>
<h3>Complex Writing Bonus</h3>
<ul>
<li>
<p><strong>+5 Credits | +2 REP</strong></p>
</li>
</ul>
<p><strong>Complex situations include:</strong></p>
<ul>
<li>
<p>Difficult or extended combat scenes</p>
</li>
<li>
<p>Managing multiple characters in a fast-paced scene</p>
</li>
<li>
<p>Exploring or explaining a unique or newly discovered planet</p>
</li>
</ul>
<p>✔ Can be claimed <strong>up to twice per week</strong><br />✔ Subject to <strong>staff review</strong> to ensure it qualifies<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86c7o-05155355-5d8f-4870-851a-9b80f2c29591.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NmM3by0wNTE1NTM1NS01ZDhmLTQ4NzAtODUxYS05YjgwZjJjMjk1OTEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.n6GyYrxX3vsH-9D_nGFwFnRb76jUm2mefPtJ4OdiIVg\" alt=\"Divider Bottom\" /></span></p>
<h2 style=\"text-align: center;\">🎨 Art Rewards</h2>
<h2 style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></h2>
<p>&nbsp;</p>
<h3>Body Visibility (per character; 4 max)</h3>
<ul>
<li>
<p><strong>25% visible</strong> &rarr; <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>50% visible</strong> &rarr; <strong>10 Credits | 5 REP</strong></p>
</li>
<li>
<p><strong>75% visible</strong> &rarr; <strong>15 Credits | 8 REP</strong></p>
</li>
<li>
<p><strong>100% visible</strong> &rarr; <strong>20 Credits | 10 REP<br /></strong></p>
<h2 style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></h2>
</li>
</ul>
<h3>Complex Art Bonus</h3>
<ul>
<li>
<p><strong>+5 Credits | +2 REP</strong></p>
</li>
</ul>
<p><strong>Complex situations include:</strong></p>
<ul>
<li>
<p>Difficult or dynamic fight scenes</p>
</li>
<li>
<p>Managing multiple characters in a fast-paced scene</p>
</li>
<li>
<p>Depicting a unique or newly discovered planet</p>
</li>
</ul>
<p>✔ Can be claimed <strong>up to twice per week</strong><br />✔ Subject to <strong>staff review</strong> to ensure it qualifies<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span></p>
<h2 style=\"text-align: center;\">✨ Extras &amp; Add-ons</h2>
<h2 style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></h2>
<p>These may be added to either writing or art unless otherwise specified.</p>
<ul>
<li>
<p><strong>Collaborations</strong> &rarr; <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Pets in scene</strong> (max 2) &rarr; <strong>3 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Mounts in scene</strong> (max 2) &rarr; <strong>5 Credits | 3 REP</strong></p>
</li>
<li>
<p><strong>Guest characters</strong> (max 3) &rarr; <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Image added to writing</strong> &rarr; <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Writing added to art</strong> (500 words) &rarr; <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Shading</strong> (art only) &rarr; <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Detailed background</strong> (not patterned) &rarr; <strong>20 Credits | 10 REP</strong></p>
</li>
<li>
<p><strong>Simple background</strong> (not patterned) &rarr; <strong>8 Credits | 4 REP</strong></p>
</li>
<li>
<p><strong>Experimental </strong>&rarr; <strong>3 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>All limbs included</strong> (art only)<br />&rarr; <strong>9 Credits | 4 REP</strong><br /><em>(All arms are optional&mdash;two are perfectly fine. This is a bonus, not a requirement.)</em></p>
</li>
</ul>
<h2 style=\"text-align: center;\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span>🤝 Collaboration Rules</h2>
<h2 style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></h2>
<ul>
<li>
<p>Collaborations may include <strong>any number of participants</strong></p>
</li>
<li>
<p>All characters must receive <strong>equal representation</strong></p>
<ul>
<li>
<p>Example: One character cannot be 25% visible while another is 75%</p>
</li>
</ul>
</li>
<li>
<p>All collaborators receive <strong>identical rewards</strong></p>
</li>
<li>
<p>All contributors must put in <strong>equal effort</strong></p>
</li>
</ul>
<p><strong>Minimum requirements to qualify:</strong></p>
<ul>
<li>
<p><strong>At least half-body art</strong>, <strong>OR</strong></p>
</li>
<li>
<p><strong>Add 1,000 words for each collaborator added</strong></p>
<ul>
<li>
<p>Example: 2 collaborators would have base 2,000 words, 3 collaborators would have 3,000 words</p>
</li>
</ul>
</li>
</ul>
<h2 style=\"text-align: center;\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span>Final Notes</h2>
<h2 style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_500,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4 2x\" alt=\"Longer-swirl-divider\" /></h2>
<p>While we strive to be flexible and supportive of creativity, staff reserve the right to adjust or deny bonuses if this system is abused.</p>
<p>Create in the way that suits you best. If your preferred creative way is not stated above, dm a staff member to check what you\'d earn.</p>', NULL, '1', '2026-02-23 05:21:05', '2026-02-23 05:40:55', '<h2 style=\"text-align:center;\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86nns-5fce4dc3-72a9-4376-a933-0b9948864e25.png/v1/fit/w_150,h_150/artemis_lines_by_howlingcrown_dl86nns-150.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjcwIiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2bm5zLTVmY2U0ZGMzLTcyYTktNDM3Ni1hOTMzLTBiOTk0ODg2NGUyNS5wbmciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.W_Ebes9bSdWBqlBewQmsDoj5la5sa_2ZxMPEOgyi93g\" alt=\"Artemis-lines\" /><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" />Creative Rewards System</h2>
<p>Dreadfarer is built around player creativity. Rewards are based on the <strong>effort and care</strong> put into a piece—not the medium used.</p>
<p>Writing and art are treated as <strong>equal forms of creative expression</strong>. Some players prefer to write, others to draw, and neither should be punished or favored for that choice. This system exists to ensure fair progression for all creators.</p>
<p>The following table applies to <strong>Expeditions, Faction Prompts, and Contracts</strong>.</p>
<h2 style=\"text-align:center;\">📝 Writing Rewards</h2>
<h2 style=\"text-align:center;\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></h2>
<h3>Base Rate</h3>
<ul>
<li>
<p><strong>1,000 words</strong> → <strong>20 Credits | 10 REP<br /></strong></p>
<h2 style=\"text-align:center;\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></h2>
</li>
</ul>
<h3>Word Count Bonuses</h3>
<ul>
<li>
<p>Every <strong>+100 words up to 2,000</strong><br />→ <strong>+3 Credits | +1 REP</strong></p>
</li>
<li>
<p>Every <strong>+500 words after 2,000</strong><br />→ <strong>+7 Credits | +3 REP<br /></strong></p>
<h2 style=\"text-align:center;\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></h2>
<p><strong> </strong></p>
</li>
</ul>
<h3>Complex Writing Bonus</h3>
<ul>
<li>
<p><strong>+5 Credits | +2 REP</strong></p>
</li>
</ul>
<p><strong>Complex situations include:</strong></p>
<ul>
<li>
<p>Difficult or extended combat scenes</p>
</li>
<li>
<p>Managing multiple characters in a fast-paced scene</p>
</li>
<li>
<p>Exploring or explaining a unique or newly discovered planet</p>
</li>
</ul>
<p>✔ Can be claimed <strong>up to twice per week</strong><br />✔ Subject to <strong>staff review</strong> to ensure it qualifies<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86c7o-05155355-5d8f-4870-851a-9b80f2c29591.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NmM3by0wNTE1NTM1NS01ZDhmLTQ4NzAtODUxYS05YjgwZjJjMjk1OTEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.n6GyYrxX3vsH-9D_nGFwFnRb76jUm2mefPtJ4OdiIVg\" alt=\"Divider Bottom\" /></span></p>
<h2 style=\"text-align:center;\">🎨 Art Rewards</h2>
<h2 style=\"text-align:center;\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></h2>
<p> </p>
<h3>Body Visibility (per character; 4 max)</h3>
<ul>
<li>
<p><strong>25% visible</strong> → <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>50% visible</strong> → <strong>10 Credits | 5 REP</strong></p>
</li>
<li>
<p><strong>75% visible</strong> → <strong>15 Credits | 8 REP</strong></p>
</li>
<li>
<p><strong>100% visible</strong> → <strong>20 Credits | 10 REP<br /></strong></p>
<h2 style=\"text-align:center;\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></h2>
</li>
</ul>
<h3>Complex Art Bonus</h3>
<ul>
<li>
<p><strong>+5 Credits | +2 REP</strong></p>
</li>
</ul>
<p><strong>Complex situations include:</strong></p>
<ul>
<li>
<p>Difficult or dynamic fight scenes</p>
</li>
<li>
<p>Managing multiple characters in a fast-paced scene</p>
</li>
<li>
<p>Depicting a unique or newly discovered planet</p>
</li>
</ul>
<p>✔ Can be claimed <strong>up to twice per week</strong><br />✔ Subject to <strong>staff review</strong> to ensure it qualifies<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span></p>
<h2 style=\"text-align:center;\">✨ Extras &amp; Add-ons</h2>
<h2 style=\"text-align:center;\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></h2>
<p>These may be added to either writing or art unless otherwise specified.</p>
<ul>
<li>
<p><strong>Collaborations</strong> → <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Pets in scene</strong> (max 2) → <strong>3 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Mounts in scene</strong> (max 2) → <strong>5 Credits | 3 REP</strong></p>
</li>
<li>
<p><strong>Guest characters</strong> (max 3) → <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Image added to writing</strong> → <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Writing added to art</strong> (500 words) → <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Shading</strong> (art only) → <strong>5 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>Detailed background</strong> (not patterned) → <strong>20 Credits | 10 REP</strong></p>
</li>
<li>
<p><strong>Simple background</strong> (not patterned) → <strong>8 Credits | 4 REP</strong></p>
</li>
<li>
<p><strong>Experimental </strong>→ <strong>3 Credits | 2 REP</strong></p>
</li>
<li>
<p><strong>All limbs included</strong> (art only)<br />→ <strong>9 Credits | 4 REP</strong><br /><em>(All arms are optional—two are perfectly fine. This is a bonus, not a requirement.)</em></p>
</li>
</ul>
<h2 style=\"text-align:center;\"><span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span>🤝 Collaboration Rules</h2>
<h2 style=\"text-align:center;\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></h2>
<ul>
<li>
<p>Collaborations may include <strong>any number of participants</strong></p>
</li>
<li>
<p>All characters must receive <strong>equal representation</strong></p>
<ul>
<li>
<p>Example: One character cannot be 25% visible while another is 75%</p>
</li>
</ul>
</li>
<li>
<p>All collaborators receive <strong>identical rewards</strong></p>
</li>
<li>
<p>All contributors must put in <strong>equal effort</strong></p>
</li>
</ul>
<p><strong>Minimum requirements to qualify:</strong></p>
<ul>
<li>
<p><strong>At least half-body art</strong>, <strong>OR</strong></p>
</li>
<li>
<p><strong>Add 1,000 words for each collaborator added</strong></p>
<ul>
<li>
<p>Example: 2 collaborators would have base 2,000 words, 3 collaborators would have 3,000 words</p>
</li>
</ul>
</li>
</ul>
<h2 style=\"text-align:center;\"><span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></span>Final Notes</h2>
<h2 style=\"text-align:center;\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png/v1/fit/w_300,h_80/longer_swirl_divider_by_howlingcrown_dl86hw1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZodzEtOWU4NTY1MjgtZTM5NS00ZWRkLTk4MzItNDk3MTM3YjU0YjcxLnBuZyIsIndpZHRoIjoiPD01MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.iSXXkBVcBPO5jjAx9ppQbTZVOhqLv5h82pZDuxLPQy4\" alt=\"Longer-swirl-divider\" /></h2>
<p>While we strive to be flexible and supportive of creativity, staff reserve the right to adjust or deny bonuses if this system is abused.</p>
<p>Create in the way that suits you best. If your preferred creative way is not stated above, dm a staff member to check what you\'d earn.</p>', '0'),
('13', 'homeworld', 'Homeworld', 'Learn about our homeworld and its history.', '<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":27,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_187/-150-2x.png\",\"w\":300,\"h\":187}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_129,y_0,scl_0.53475935828877/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_107/-200h-2x.png\",\"w\":600,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_187/-300w.png\",\"h\":54,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_187/-300w-2x.png\",\"w\":600,\"h\":187}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_67/-375w.png\",\"h\":67,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_134/-375w-2x.png\",\"w\":750,\"h\":134}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_74/-414w.png\",\"h\":74,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_828,h_148/-414w-2x.png\",\"w\":828,\"h\":148}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_100,x_29,y_0,scl_0.53475935828877/-250t.png\",\"h\":100,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1000,h_179/-250t-2x.png\",\"w\":1000,\"h\":179}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_700,h_125/-350t.png\",\"h\":125,\"w\":700,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1047,h_187/-350t-2x.png\",\"w\":1047,\"h\":187}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_800,h_143/-400t.png\",\"h\":143,\"w\":800,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1047,h_187/-400t-2x.png\",\"w\":1047,\"h\":187}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_1047,h_187/-fullview.png\",\"h\":187,\"w\":1047,\"o\":true,\"f\":42868},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_1047,h_187/-fullview.png\",\"h\":187,\"w\":1047,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":187,\"w\":1047,\"o\":true,\"f\":42868},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_106,y_0,scl_0.49197860962567/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_212,y_0,scl_0.98395721925134/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_144,y_0,scl_0.66844919786096/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_187,x_215,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":187}]}]},\"filetype\":\"png\",\"entityId\":1283528095}\" data-alignment=\"center\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86gm7-c61a733e-61d6-4aed-b83f-bf8d06bdcc99.png/v1/fill/w_800,h_143/annwyl_banner_by_howlingcrown_dl86gm7-400t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTg3IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2Z203LWM2MWE3MzNlLTYxZDYtNGFlZC1iODNmLWJmOGQwNmJkY2M5OS5wbmciLCJ3aWR0aCI6Ijw9MTA0NyJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.NJ2DJHiD4GxUwYbICObXcWAkIuviP1uB3iOUSJqnRYA\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86gm7-c61a733e-61d6-4aed-b83f-bf8d06bdcc99.png/v1/fill/w_1047,h_187/annwyl_banner_by_howlingcrown_dl86gm7-400t-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTg3IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2Z203LWM2MWE3MzNlLTYxZDYtNGFlZC1iODNmLWJmOGQwNmJkY2M5OS5wbmciLCJ3aWR0aCI6Ijw9MTA0NyJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.NJ2DJHiD4GxUwYbICObXcWAkIuviP1uB3iOUSJqnRYA 2x\" alt=\"Annwyl-banner\" /></div>
</figure>
</div>
<h2 style=\"text-align: center;\">Annwyl</h2>
<p style=\"text-align: center;\"><em><strong>Homeworld of the Voidi</strong></em></p>
<p>Annwyl is not a world that was meant to last.</p>
<p>It is the shattered remains of an ancient exoplanet, struck by a wandering moon centuries ago. What survived the collision fused together&mdash;planetary crust, lunar mass, and debris locked into a single, unstable body. The species stranded upon that broken moon endured. Over time, they became the <strong>Voidi</strong>.</p>
<p><em><strong>Annwyl is a world of constant survival.</strong></em></p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":38,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_128/-150-2x.png\",\"w\":300,\"h\":128}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_44,y_0,scl_0.78125/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_128/-200h-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_128/-300w.png\",\"h\":77,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-300w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_96/-375w.png\",\"h\":96,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-375w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_106/-414w.png\",\"h\":106,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-414w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true,\"f\":3379},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":128,\"w\":500,\"o\":true,\"f\":3379},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_67,y_0,scl_0.71875/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_128,x_93,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":128}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_91,y_0,scl_0.9765625/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_128,x_93,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":128}]}]},\"filetype\":\"png\",\"entityId\":1283528130}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86gn6-ac91e695-db36-49ef-b5e8-215f1ff9e9f8.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NmduNi1hYzkxZTY5NS1kYjM2LTQ5ZWYtYjVlOC0yMTVmMWZmOWU5ZjgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.P-21SDpofJYh3pJu07iOE4O9TBv5kJJVSBbo3hOVnIo\" alt=\"Artemis-divider\" /></span></figure>
</div>
<h4>Environment &amp; Climate</h4>
<p>Annwyl is a <strong>hyper-frozen planet</strong>, with surface temperatures ranging from <strong>&minus;100&deg;C to &minus;300&deg;C</strong>, depending on which face of the planet is turned toward its dying star. That star, old and failing, provides barely enough light to see on even the clearest of days.</p>
<p>For most of the year, Annwyl exists in near-permanent darkness.</p>
<p class=\"empty-p\">&nbsp;</p>
<h4>Orbital Mechanics</h4>
<ul>
<li>
<p><strong>Orbital Period:</strong><br />Annwyl completes a full revolution around its star every <strong>248 Earth years</strong>.</p>
</li>
<li>
<p><strong>Rotational Period:</strong><br />A single day on Annwyl lasts approximately <strong>6.4 Earth days</strong>, producing long, brutal cycles of exposure and cold.</p>
</li>
</ul>
<h4>Geological Instability</h4>
<p>Formed from the violent collision of planetary and lunar remains, Annwyl is geologically unstable.</p>
<ul>
<li>
<p><strong>Tectonic activity is constant</strong>, with plates grinding and shifting beneath the frozen crust.</p>
</li>
<li>
<p>Vast <strong>gorges</strong> can form in a matter of decades.</p>
</li>
<li>
<p>Entire <strong>mountain ranges</strong> rise rapidly, reshaping the surface without warning.</p>
</li>
</ul>
<p>The planet is never truly still.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":24,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_80/-150-2x.png\",\"w\":300,\"h\":80}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_80,x_99,y_0,scl_1/-200h.png\",\"h\":80,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_80/-200h-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_80/-300w.png\",\"h\":48,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-300w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_60/-375w.png\",\"h\":60,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-375w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_66/-414w.png\",\"h\":66,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-414w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_80,x_105,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_80,x_105,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":80}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_80,x_105,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_80,x_105,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":80}]}]},\"filetype\":\"png\",\"entityId\":1283529745}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4Nmh3MS05ZTg1NjUyOC1lMzk1LTRlZGQtOTgzMi00OTcxMzdiNTRiNzEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.HzW8eNQFXz_GTJMOmR4u2sbcyB4mHEJ0VKTeUyNjRJ4\" alt=\"Longer-swirl-divider\" /></span></figure>
</div>
<h4>Life &amp; Longevity</h4>
<p>Voidi are not adapted to Annwyl by design&mdash;but by endurance.</p>
<p>While they are capable of reaching ages of <strong>up to 690 years</strong>, most do not die from age. Instead, they succumb to the elements as their bodies slowly lose the ability to generate and retain enough heat to sustain life.</p>
<blockquote>
<h4 style=\"text-align: center;\">On Annwyl, survival is temporary.<br />Longevity is earned.<br />Nothing lasts forever.</h4>
</blockquote>', NULL, '1', '2026-02-23 06:50:21', '2026-02-24 04:07:17', '<div class=\"B2Wm85\">
-150.png\",\"h\":27,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_187/-150-2x.png\",\"w\":300,\"h\":187}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_129,y_0,scl_0.53475935828877/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_107/-200h-2x.png\",\"w\":600,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_187/-300w.png\",\"h\":54,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_187/-300w-2x.png\",\"w\":600,\"h\":187}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_67/-375w.png\",\"h\":67,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_134/-375w-2x.png\",\"w\":750,\"h\":134}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_74/-414w.png\",\"h\":74,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_828,h_148/-414w-2x.png\",\"w\":828,\"h\":148}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_100,x_29,y_0,scl_0.53475935828877/-250t.png\",\"h\":100,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1000,h_179/-250t-2x.png\",\"w\":1000,\"h\":179}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_700,h_125/-350t.png\",\"h\":125,\"w\":700,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1047,h_187/-350t-2x.png\",\"w\":1047,\"h\":187}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_800,h_143/-400t.png\",\"h\":143,\"w\":800,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1047,h_187/-400t-2x.png\",\"w\":1047,\"h\":187}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_1047,h_187/-fullview.png\",\"h\":187,\"w\":1047,\"o\":true,\"f\":42868},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_1047,h_187/-fullview.png\",\"h\":187,\"w\":1047,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":187,\"w\":1047,\"o\":true,\"f\":42868},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_106,y_0,scl_0.49197860962567/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_212,y_0,scl_0.98395721925134/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_144,y_0,scl_0.66844919786096/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_187,x_215,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":187}]}]},\"filetype\":\"png\",\"entityId\":1283528095}\" data-alignment=\"center\"&gt;
<div><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86gm7-c61a733e-61d6-4aed-b83f-bf8d06bdcc99.png/v1/fill/w_800,h_143/annwyl_banner_by_howlingcrown_dl86gm7-400t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTg3IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg2Z203LWM2MWE3MzNlLTYxZDYtNGFlZC1iODNmLWJmOGQwNmJkY2M5OS5wbmciLCJ3aWR0aCI6Ijw9MTA0NyJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.NJ2DJHiD4GxUwYbICObXcWAkIuviP1uB3iOUSJqnRYA\" alt=\"Annwyl-banner\" /></div>

</div>
<h2 style=\"text-align:center;\">Annwyl</h2>
<p style=\"text-align:center;\"><em><strong>Homeworld of the Voidi</strong></em></p>
<p>Annwyl is not a world that was meant to last.</p>
<p>It is the shattered remains of an ancient exoplanet, struck by a wandering moon centuries ago. What survived the collision fused together—planetary crust, lunar mass, and debris locked into a single, unstable body. The species stranded upon that broken moon endured. Over time, they became the <strong>Voidi</strong>.</p>
<p><em><strong>Annwyl is a world of constant survival.</strong></em></p>
<div class=\"B2Wm85\">
-150.png\",\"h\":38,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_128/-150-2x.png\",\"w\":300,\"h\":128}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_44,y_0,scl_0.78125/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_128/-200h-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_128/-300w.png\",\"h\":77,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-300w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_96/-375w.png\",\"h\":96,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-375w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_106/-414w.png\",\"h\":106,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_128/-414w-2x.png\",\"w\":500,\"h\":128}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true,\"f\":3379},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_128/-fullview.png\",\"h\":128,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":128,\"w\":500,\"o\":true,\"f\":3379},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_67,y_0,scl_0.71875/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_128,x_93,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":128}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_91,y_0,scl_0.9765625/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_128,x_93,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":128}]}]},\"filetype\":\"png\",\"entityId\":1283528130}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86gn6-ac91e695-db36-49ef-b5e8-215f1ff9e9f8.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NmduNi1hYzkxZTY5NS1kYjM2LTQ5ZWYtYjVlOC0yMTVmMWZmOWU5ZjgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.P-21SDpofJYh3pJu07iOE4O9TBv5kJJVSBbo3hOVnIo\" alt=\"Artemis-divider\" /></span>
</div>
<h4>Environment &amp; Climate</h4>
<p>Annwyl is a <strong>hyper-frozen planet</strong>, with surface temperatures ranging from <strong>−100°C to −300°C</strong>, depending on which face of the planet is turned toward its dying star. That star, old and failing, provides barely enough light to see on even the clearest of days.</p>
<p>For most of the year, Annwyl exists in near-permanent darkness.</p>
<p class=\"empty-p\"> </p>
<h4>Orbital Mechanics</h4>
<ul>
<li>
<p><strong>Orbital Period:</strong><br />Annwyl completes a full revolution around its star every <strong>248 Earth years</strong>.</p>
</li>
<li>
<p><strong>Rotational Period:</strong><br />A single day on Annwyl lasts approximately <strong>6.4 Earth days</strong>, producing long, brutal cycles of exposure and cold.</p>
</li>
</ul>
<h4>Geological Instability</h4>
<p>Formed from the violent collision of planetary and lunar remains, Annwyl is geologically unstable.</p>
<ul>
<li>
<p><strong>Tectonic activity is constant</strong>, with plates grinding and shifting beneath the frozen crust.</p>
</li>
<li>
<p>Vast <strong>gorges</strong> can form in a matter of decades.</p>
</li>
<li>
<p>Entire <strong>mountain ranges</strong> rise rapidly, reshaping the surface without warning.</p>
</li>
</ul>
<p>The planet is never truly still.</p>
<div class=\"B2Wm85\">
-150.png\",\"h\":24,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_80/-150-2x.png\",\"w\":300,\"h\":80}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_80,x_99,y_0,scl_1/-200h.png\",\"h\":80,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_500,h_80/-200h-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_80/-300w.png\",\"h\":48,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-300w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_60/-375w.png\",\"h\":60,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-375w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_66/-414w.png\",\"h\":66,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_500,h_80/-414w-2x.png\",\"w\":500,\"h\":80}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_500,h_80/-fullview.png\",\"h\":80,\"w\":500,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":80,\"w\":500,\"o\":true,\"f\":1278},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_80,x_105,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_80,x_105,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":80}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_80,x_105,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_80,x_105,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":80}]}]},\"filetype\":\"png\",\"entityId\":1283529745}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86hw1-9e856528-e395-4edd-9832-497137b54b71.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4Nmh3MS05ZTg1NjUyOC1lMzk1LTRlZGQtOTgzMi00OTcxMzdiNTRiNzEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.HzW8eNQFXz_GTJMOmR4u2sbcyB4mHEJ0VKTeUyNjRJ4\" alt=\"Longer-swirl-divider\" /></span>
</div>
<h4>Life &amp; Longevity</h4>
<p>Voidi are not adapted to Annwyl by design—but by endurance.</p>
<p>While they are capable of reaching ages of <strong>up to 690 years</strong>, most do not die from age. Instead, they succumb to the elements as their bodies slowly lose the ability to generate and retain enough heat to sustain life.</p>
<blockquote>
<h4 style=\"text-align:center;\">On Annwyl, survival is temporary.<br />Longevity is earned.<br />Nothing lasts forever.</h4>
</blockquote>', '0'),
('14', 'species', 'Species Info', 'Learn about the species, biology, and visual guide.', '<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":27,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_187/-150-2x.png\",\"w\":300,\"h\":187}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_129,y_0,scl_0.53475935828877/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_107/-200h-2x.png\",\"w\":600,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_187/-300w.png\",\"h\":54,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_187/-300w-2x.png\",\"w\":600,\"h\":187}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_67/-375w.png\",\"h\":67,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_134/-375w-2x.png\",\"w\":750,\"h\":134}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_74/-414w.png\",\"h\":74,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_828,h_148/-414w-2x.png\",\"w\":828,\"h\":148}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_100,x_29,y_0,scl_0.53475935828877/-250t.png\",\"h\":100,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1000,h_179/-250t-2x.png\",\"w\":1000,\"h\":179}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_700,h_125/-350t.png\",\"h\":125,\"w\":700,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1047,h_187/-350t-2x.png\",\"w\":1047,\"h\":187}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_800,h_143/-400t.png\",\"h\":143,\"w\":800,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_1047,h_187/-400t-2x.png\",\"w\":1047,\"h\":187}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_1047,h_187/-fullview.png\",\"h\":187,\"w\":1047,\"o\":true,\"f\":46554},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_1047,h_187/-fullview.png\",\"h\":187,\"w\":1047,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":187,\"w\":1047,\"o\":true,\"f\":46554},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_106,y_0,scl_0.49197860962567/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_212,y_0,scl_0.98395721925134/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_144,y_0,scl_0.66844919786096/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_187,x_215,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":187}]}]},\"filetype\":\"png\",\"entityId\":1283430397}\" data-alignment=\"center\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84d8d-9ffc1d0a-00ba-42f3-a58e-596533fc63e1.png/v1/fill/w_800,h_143/voidi_banner3_by_howlingcrown_dl84d8d-400t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTg3IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0ZDhkLTlmZmMxZDBhLTAwYmEtNDJmMy1hNThlLTU5NjUzM2ZjNjNlMS5wbmciLCJ3aWR0aCI6Ijw9MTA0NyJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.lsh7azDzGONKNL5DH6TDYAAgmRqB6KVKkQAbNE4JxZk\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84d8d-9ffc1d0a-00ba-42f3-a58e-596533fc63e1.png/v1/fill/w_1047,h_187/voidi_banner3_by_howlingcrown_dl84d8d-400t-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTg3IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0ZDhkLTlmZmMxZDBhLTAwYmEtNDJmMy1hNThlLTU5NjUzM2ZjNjNlMS5wbmciLCJ3aWR0aCI6Ijw9MTA0NyJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.lsh7azDzGONKNL5DH6TDYAAgmRqB6KVKkQAbNE4JxZk 2x\" alt=\"Voidi-banner3\" /></div>
</figure>
</div>
<h2 style=\"text-align: center;\">The Voidi Species</h2>
<h4 style=\"text-align: center;\"><em>Primary Species of Dreadfarer</em></h4>
<p class=\"empty-p\">&nbsp;</p>
<p>The <strong>Voidi</strong> are the native species of the Dreadfarer universe, originating from a starless world locked in extreme cold for most of its year. Adapted to darkness, volatile environments, and long-term survival, Voidi physiology is unlike that of most known species.<br /><br /></p>
<p>While they share a common biological framework, Voidi are divided into <strong>five recognized subspecies</strong>, shaped by environment, isolation, and external influence.</p>
<hr />
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":150,\"w\":80,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_121,h_228/-150-2x.png\",\"w\":121,\"h\":228}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/fill/w_106,h_200/-200h.png\",\"h\":200,\"w\":106,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_121,h_228/-200h-2x.png\",\"w\":121,\"h\":228}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true,\"f\":2862},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_121,h_228/-fullview.png\",\"h\":228,\"w\":121,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":228,\"w\":121,\"o\":true,\"f\":2862},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_20,scl_0.7603305785124/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_121,h_184,x_0,y_27,scl_1/-92s-2x.png\",\"w\":121,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_121,h_125,x_0,y_27,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_121,h_228,x_0,y_27,scl_1/-125s-2x.png\",\"w\":121,\"h\":228}]}]},\"filetype\":\"png\",\"entityId\":1283434861}\" data-width=\"96\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84god-d860403f-cdcb-45c8-9d2b-c28236844a21.png/v1/fill/w_106,h_200/artemis_decal_by_howlingcrown_dl84god-200h.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI4IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0Z29kLWQ4NjA0MDNmLWNkY2ItNDVjOC05ZDJiLWMyODIzNjg0NGEyMS5wbmciLCJ3aWR0aCI6Ijw9MTIxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.OQ_GGZZsR3N_OPUfcMGAMN_pmOfeoofFcUt77xMULh4\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84god-d860403f-cdcb-45c8-9d2b-c28236844a21.png/v1/fill/w_121,h_228/artemis_decal_by_howlingcrown_dl84god-200h-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI4IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0Z29kLWQ4NjA0MDNmLWNkY2ItNDVjOC05ZDJiLWMyODIzNjg0NGEyMS5wbmciLCJ3aWR0aCI6Ijw9MTIxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.OQ_GGZZsR3N_OPUfcMGAMN_pmOfeoofFcUt77xMULh4 2x\" alt=\"Artemis-decal\" /></div>
</figure>
</div>
<h2 style=\"text-align: center;\">Core Voidi Biology</h2>
<p style=\"text-align: center;\">All Voidi share the following traits, regardless of subspecies:</p>
<p class=\"empty-p\">&nbsp;</p>
<h3>Environmental Adaptations</h3>
<ul>
<li>
<p><strong>Extreme Cold Origin:</strong><br />Voidi evolved on a planet without a sun for the vast majority of the year. As a result, their bodies are built to retain and regulate heat aggressively.</p>
</li>
<li>
<p><strong>Thermal Vents:</strong><br />Colorful vents located around the body help leech excess heat when necessary. These vents glow faintly and are most vibrant when the Voidi is exerting themselves or overheated.</p>
</li>
<li>
<p><strong>Bioluminescent Blood:</strong><br />Voidi blood glows due to unique chemical adaptations tied to their sunless homeworld. This glow is often visible beneath thin skin, especially at joints, vents, palms, and wounds.<br /><span style=\"color: #4fd1e8; font-family: \'Roboto Condensed\', serif; font-size: 1.575rem; font-weight: bold; letter-spacing: 2px; text-transform: uppercase;\"><br />Skin &amp; Sensory Traits</span></p>
</li>
</ul>
<ul>
<li>
<p><strong>Volatile Reaction to Water:</strong><br />Voidi skin reacts <strong>violently to prolonged water exposure</strong>. Moisture can cause irritation, pain, or chemical reactions depending on exposure and subspecies.</p>
</li>
<li>
<p><strong>Irritating Fibers:</strong><br />Their skin is covered in incredibly fine, hair-like fibers&mdash;similar to a tarantula&rsquo;s&mdash;that can irritate bare skin on contact. This acts as both a sensory organ and a passive defense.</p>
</li>
<li>
<p><strong>Sensitive Palms/Vents:</strong><br />Voidi palms/vents are extremely thin and nerve-dense, causing them to glow faintly. They are highly sensitive to touch, pressure, and temperature.</p>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":150,\"w\":49,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_98,h_297/-150-2x.png\",\"w\":98,\"h\":297}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_98,h_201,x_0,y_0,scl_1/-200h.png\",\"h\":201,\"w\":98,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_98,h_297/-200h-2x.png\",\"w\":98,\"h\":297}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_98,h_251,x_0,y_0,scl_1/-250t.png\",\"h\":251,\"w\":98,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_98,h_297/-250t-2x.png\",\"w\":98,\"h\":297}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true,\"f\":13287},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_98,h_297/-fullview.png\",\"h\":297,\"w\":98,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":297,\"w\":98,\"o\":true,\"f\":13287},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_47,scl_0.93877551020408/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_98,h_184,x_0,y_50,scl_1/-92s-2x.png\",\"w\":98,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_98,h_125,x_0,y_50,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_98,h_250,x_0,y_50,scl_1/-125s-2x.png\",\"w\":98,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1283431441}\" data-width=\"96\" data-alignment=\"left\"&gt;<span style=\"color: #4fd1e8; font-family: \'Roboto Condensed\', serif; font-size: 1.575rem; font-weight: bold; letter-spacing: 2px; text-transform: uppercase;\"><br />Skeletal &amp; Survival Systems</span></figure>
</div>
</li>
<li>
<p><strong>Secondary Pseudo-Spine:</strong><br />In addition to their main spine, Voidi possess a secondary pseudo-spine that protects specialized <strong>blood and adrenaline pockets</strong> located near the neck.</p>
</li>
<li>
<p><strong>Adrenaline Hearts:</strong><br />These pockets&mdash;often referred to as secondary &ldquo;hearts&rdquo;&mdash;burst when a Voidi is near death, flooding the body with adrenaline and energy. This grants a final chance to escape a lethal threat. Voidi can have up to three hearts, but it can range with genetics.</p>
</li>
</ul>
<h3>Emotional Indicators</h3>
<ul>
<li>
<p><strong>Cheek Fluffs:</strong><br />Voidi cheek fluffs are highly reactive to emotion.</p>
<ul>
<li>
<p>Soft and fluffy when happy, flustered, or relaxed</p>
</li>
<li>
<p>Spiky and prickly when irritated, stressed, or threatened</p>
</li>
</ul>
</li>
</ul>
<p>This reaction is involuntary and often betrays their emotional state.</p>
<hr />
<h3>Movement &amp; Posture</h3>
<ul>
<li>
<p><strong>Quadrupedal Capable:</strong><br />Voidi can crawl and move efficiently on all fours, particularly when navigating tight spaces, rough terrain, or during combat or flight responses.</p>
</li>
</ul>
<div class=\"B2Wm85 yeazx5\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":150,\"w\":29,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_55,h_287/-150-2x.png\",\"w\":55,\"h\":287}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_55,h_201,x_0,y_0,scl_1/-200h.png\",\"h\":201,\"w\":55,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_55,h_287/-200h-2x.png\",\"w\":55,\"h\":287}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fill/w_55,h_287/-fullview.png\",\"h\":287,\"w\":55,\"o\":true},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_55,h_287/-fullview.png\",\"h\":287,\"w\":55,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_55,h_287/-fullview.png\",\"h\":287,\"w\":55,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_55,h_251,x_0,y_0,scl_1/-250t.png\",\"h\":251,\"w\":55,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_55,h_287/-250t-2x.png\",\"w\":55,\"h\":287}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_55,h_287/-fullview.png\",\"h\":287,\"w\":55,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_55,h_287/-fullview.png\",\"h\":287,\"w\":55,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_55,h_287/-fullview.png\",\"h\":287,\"w\":55,\"o\":true,\"f\":7737},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_55,h_287/-fullview.png\",\"h\":287,\"w\":55,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":287,\"w\":55,\"o\":true,\"f\":7737},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_55,h_92,x_0,y_58,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_55,h_184,x_0,y_58,scl_1/-92s-2x.png\",\"w\":55,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_55,h_125,x_0,y_58,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_55,h_250,x_0,y_58,scl_1/-125s-2x.png\",\"w\":55,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1283447180}\" data-width=\"96\" data-alignment=\"right\"&gt;</figure>
</div>
<h3>Arm Structure (All Subspecies)</h3>
<p>Every Voidi has <strong>six arms</strong>, though not all may be depicted visually.</p>
<ul>
<li>
<p><strong>Inner Pair:</strong><br />Small arms tucked close to the body, best for fine motor control and handling delicate objects.</p>
</li>
<li>
<p><strong>Secondary Pair:</strong><br />Medium-sized arms used for tasks close to the torso.</p>
</li>
<li>
<p><strong>Primary Pair:</strong><br />Large, fully capable arms used for combat, lifting, and general interaction.</p>
</li>
</ul>
<hr />
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":49,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_194/-150-2x.png\",\"w\":300,\"h\":194}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_1,y_0,scl_0.51546391752577/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_591,h_194/-200h-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_194/-300w.png\",\"h\":98,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-300w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_123/-375w.png\",\"h\":123,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-375w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_136/-414w.png\",\"h\":136,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_591,h_194/-414w-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_164/-250t.png\",\"h\":164,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_591,h_194/-250t-2x.png\",\"w\":591,\"h\":194}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true,\"f\":24054},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_591,h_194/-fullview.png\",\"h\":194,\"w\":591,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":194,\"w\":591,\"o\":true,\"f\":24054},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_47,y_0,scl_0.47422680412371/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_94,y_0,scl_0.94845360824742/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_64,y_0,scl_0.64432989690722/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_194,x_99,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":194}]}]},\"filetype\":\"png\",\"entityId\":1283442789}\" data-width=\"466\" data-alignment=\"center\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84msl-4d3fdfb4-0c44-4410-84e1-0c37c0ee7abc.png/v1/fill/w_500,h_164/divider_top__by_howlingcrown_dl84msl-250t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTk0IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0bXNsLTRkM2ZkZmI0LTBjNDQtNDQxMC04NGUxLTBjMzdjMGVlN2FiYy5wbmciLCJ3aWR0aCI6Ijw9NTkxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.wSO9AMPB5paBAmQjfj_W6lK-DkhOdezGG9pvFwR4FXQ\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84msl-4d3fdfb4-0c44-4410-84e1-0c37c0ee7abc.png/v1/fill/w_591,h_194/divider_top__by_howlingcrown_dl84msl-250t-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTk0IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0bXNsLTRkM2ZkZmI0LTBjNDQtNDQxMC04NGUxLTBjMzdjMGVlN2FiYy5wbmciLCJ3aWR0aCI6Ijw9NTkxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.wSO9AMPB5paBAmQjfj_W6lK-DkhOdezGG9pvFwR4FXQ 2x\" alt=\"Divider Top \" width=\"402\" height=\"132\" /></div>
</figure>
</div>
<h2 style=\"text-align: center;\">Subspecies Overview</h2>
<p style=\"text-align: center;\">While biologically similar, Voidi subspecies vary greatly in appearance and cultural influence.</p>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":21,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_72/-150-2x.png\",\"w\":300,\"h\":72}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_72,x_102,y_0,scl_1/-200h.png\",\"h\":72,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_507,h_72/-200h-2x.png\",\"w\":507,\"h\":72}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_72/-300w.png\",\"h\":43,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_507,h_72/-300w-2x.png\",\"w\":507,\"h\":72}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_53/-375w.png\",\"h\":53,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_507,h_72/-375w-2x.png\",\"w\":507,\"h\":72}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_59/-414w.png\",\"h\":59,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_507,h_72/-414w-2x.png\",\"w\":507,\"h\":72}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_502,h_72,x_2,y_0,scl_1/-250t.png\",\"h\":72,\"w\":502,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_507,h_72/-250t-2x.png\",\"w\":507,\"h\":72}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_507,h_72/-fullview.png\",\"h\":72,\"w\":507,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_507,h_72/-fullview.png\",\"h\":72,\"w\":507,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_507,h_72/-fullview.png\",\"h\":72,\"w\":507,\"o\":true,\"f\":26331},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_507,h_72/-fullview.png\",\"h\":72,\"w\":507,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":72,\"w\":507,\"o\":true,\"f\":26331},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_72,x_109,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_72,x_109,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":72}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_72,x_109,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_72,x_109,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":72}]}]},\"filetype\":\"png\",\"entityId\":1283516245}\" data-width=\"238\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl867h1-034e00b7-79fa-4b55-87d3-046239a3d6ce.png/v1/fit/w_300,h_72/off_planet_by_howlingcrown_dl867h1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzIiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODY3aDEtMDM0ZTAwYjctNzlmYS00YjU1LTg3ZDMtMDQ2MjM5YTNkNmNlLnBuZyIsIndpZHRoIjoiPD01MDcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.QNUWHMtEk5xBoRpxzHiXgQ1x0qd3BsR1-0m3qtnqDIM\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl867h1-034e00b7-79fa-4b55-87d3-046239a3d6ce.png/v1/fit/w_507,h_72/off_planet_by_howlingcrown_dl867h1-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzIiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODY3aDEtMDM0ZTAwYjctNzlmYS00YjU1LTg3ZDMtMDQ2MjM5YTNkNmNlLnBuZyIsIndpZHRoIjoiPD01MDcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.QNUWHMtEk5xBoRpxzHiXgQ1x0qd3BsR1-0m3qtnqDIM 2x\" alt=\"Off-planet\" /></div>
</figure>
</div>
<p class=\"empty-p\">&nbsp;</p>
<h4>Off-Planet</h4>
<p><em>Recognized Subspecies</em></p>
<p class=\"empty-p\">&nbsp;</p>
<p>Off-Planet Voidi are those born and raised in artificial nurseries beyond their homeworld. While these facilities attempt to replicate native conditions, they rarely achieve the precise temperature, gravity, and atmospheric balance required for ideal development.</p>
<p>As a result, Off-Planet Voidi often display noticeable physical deviations.</p>
<p class=\"empty-p\">&nbsp;</p>
<h4>Developmental Traits</h4>
<ul>
<li>
<p><strong>Altered Proportions:</strong><br />Reduced gravity during gestation commonly results in a longer middle body section and thicker, heavier legs.</p>
</li>
<li>
<p><strong>Vent Irregularities:</strong><br />Vent spacing is often uneven or misplaced, a side effect of incorrect thermal regulation during early growth.</p>
</li>
<li>
<p><strong>Hand Structure Variations:</strong><br />An unsplit finger is a frequent occurrence. Palms often do not glow due to thicker skin forming in the area.</p>
</li>
<li>
<p><strong>Markings &amp; Coloration:</strong><br />Heavy markings and vibrant patterns are extremely common. These are caused by improper temperature control and acidity levels within the nursery environment.</p>
</li>
</ul>
<h4>Skin &amp; Defensive Adaptations</h4>
<ul>
<li>
<p><strong>Thicker Flesh:</strong><br />Off-Planet Voidi often develop thicker skin and flesh, which may allow them a few extra moments of contact with water before burning occurs.</p>
</li>
<li>
<p><strong>Irritating Fibers:</strong><br />The fine, irritating hairs that typically coat Voidi skin may be reduced, uneven, or entirely absent in this subspecies.</p>
</li>
</ul>
<h4>Skeletal &amp; Structural Differences</h4>
<ul>
<li>
<p><strong>Dew Claw Absence:</strong><br />A lack of dew claws is common.</p>
</li>
<li>
<p><strong>Tail Spines:</strong><br />Unlike many native Voidi, Off-Planet individuals frequently develop spines along the <strong>entire length of the tail</strong>, rather than in limited sections.</p>
</li>
</ul>
<h4>Cultural Notes</h4>
<p class=\"empty-p\">&nbsp;</p>
<p>Off-Planet Voidi are often visually distinct from their homeworld counterparts and may stand out immediately among other Voidi populations. While biologically sound, they are sometimes viewed as unconventional&mdash;or unpredictable&mdash;by more traditional groups.</p>
<p>Despite this, many Off-Planet Voidi adapt well to interstellar life, their varied traits reflecting the environments that shaped them. Off-planet Voidi are known to be much more friendly to others, nothing like their aggressive counterparts.</p>
<p><strong>They are forged by stars, </strong><em><strong>living on the edge of home.</strong></em></p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":150,\"w\":72,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_300/-150-2x.png\",\"w\":300,\"h\":300}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_100,h_201,x_0,y_0,scl_0.065104166666667/-200h.png\",\"h\":201,\"w\":100,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_192,h_400/-200h-2x.png\",\"w\":192,\"h\":400}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_900/-300w.png\",\"h\":626,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_1800/-300w-2x.png\",\"w\":600,\"h\":1800}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_782/-375w.png\",\"h\":782,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_1564/-375w-2x.png\",\"w\":750,\"h\":1564}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_863/-414w.png\",\"h\":863,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_828,h_1726/-414w-2x.png\",\"w\":828,\"h\":1726}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_120,h_250/-250t.png\",\"h\":250,\"w\":120,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_240,h_500/-250t-2x.png\",\"w\":240,\"h\":500}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_168,h_350/-350t.png\",\"h\":350,\"w\":168,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_336,h_700/-350t-2x.png\",\"w\":336,\"h\":700}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_192,h_400/-400t.png\",\"h\":400,\"w\":192,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_384,h_800/-400t-2x.png\",\"w\":384,\"h\":800}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_619,h_1291/-pre.png\",\"h\":1291,\"w\":619,\"o\":true,\"f\":1786492,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_619,h_1291/-pre-2x.png\",\"w\":619,\"h\":1291}]},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_619,h_1291/-pre.png\",\"h\":1291,\"w\":619,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_619,h_1291/-pre-2x.png\",\"w\":619,\"h\":1291}]},{\"t\":\"fullview\",\"r\":0,\"c\":\"/v1/fill/w_1280,h_2669/-fullview.png\",\"h\":2669,\"w\":1280,\"o\":true,\"f\":1786492},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_25,scl_0.059895833333333/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_0,y_50,scl_0.11979166666667/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_0,y_34,scl_0.081380208333333/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_250,x_0,y_68,scl_0.16276041666667/-125s-2x.png\",\"w\":250,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1293688098}\" data-width=\"413\" data-alignment=\"center\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle884i-7af2fa4e-c46c-42ad-8daa-a8557af46062.png/v1/fit/w_414,h_863/offplanet_by_hermescasp_dle884i-414w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjY2OSIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0aS03YWYyZmE0ZS1jNDZjLTQyYWQtOGRhYS1hODU1N2FmNDYwNjIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Yl89cKqZOi8Kw4aUDgVl2YN_Bg8-cLvSy6nXb90Y1Hs\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle884i-7af2fa4e-c46c-42ad-8daa-a8557af46062.png/v1/fit/w_828,h_1726/offplanet_by_hermescasp_dle884i-414w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjY2OSIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0aS03YWYyZmE0ZS1jNDZjLTQyYWQtOGRhYS1hODU1N2FmNDYwNjIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Yl89cKqZOi8Kw4aUDgVl2YN_Bg8-cLvSy6nXb90Y1Hs 2x\" alt=\"Offplanet\" /></div>
</figure>
</div>
<p class=\"empty-p\">&nbsp;</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283074352}\" data-width=\"700\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span></figure>
</div>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":29,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_66/-150-2x.png\",\"w\":300,\"h\":66}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_66,x_22,y_0,scl_1/-200h.png\",\"h\":66,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_347,h_66/-200h-2x.png\",\"w\":347,\"h\":66}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_66/-300w.png\",\"h\":57,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_347,h_66/-300w-2x.png\",\"w\":347,\"h\":66}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_347,h_66/-fullview.png\",\"h\":66,\"w\":347,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_347,h_66/-fullview.png\",\"h\":66,\"w\":347,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_347,h_66/-fullview.png\",\"h\":66,\"w\":347,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_347,h_66/-fullview.png\",\"h\":66,\"w\":347,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_347,h_66/-fullview.png\",\"h\":66,\"w\":347,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_347,h_66/-fullview.png\",\"h\":66,\"w\":347,\"o\":true,\"f\":18013},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_347,h_66/-fullview.png\",\"h\":66,\"w\":347,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":66,\"w\":347,\"o\":true,\"f\":18013},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_66,x_70,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_66,x_70,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":66}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_66,x_70,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_66,x_70,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":66}]}]},\"filetype\":\"png\",\"entityId\":1283518412}\" data-width=\"195\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86958-9a7b347e-68c8-4cc4-8dcd-30e7552dc37f.png/v1/fit/w_300,h_66/voidien_by_howlingcrown_dl86958-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjYiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODY5NTgtOWE3YjM0N2UtNjhjOC00Y2M0LThkY2QtMzBlNzU1MmRjMzdmLnBuZyIsIndpZHRoIjoiPD0zNDcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.hbSzk07JCtyXp0HzCK4GEPzRtEqA67KPhmErgDtqDZA\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86958-9a7b347e-68c8-4cc4-8dcd-30e7552dc37f.png/v1/fit/w_347,h_66/voidien_by_howlingcrown_dl86958-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjYiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODY5NTgtOWE3YjM0N2UtNjhjOC00Y2M0LThkY2QtMzBlNzU1MmRjMzdmLnBuZyIsIndpZHRoIjoiPD0zNDcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.hbSzk07JCtyXp0HzCK4GEPzRtEqA67KPhmErgDtqDZA 2x\" alt=\"Voidien\" width=\"253\" height=\"48\" /></div>
</figure>
</div>
<h4>Voidien (LIMITED)</h4>
<p><em>Recognized Subspecies &mdash; Parent Lineage</em></p>
<p class=\"empty-p\">&nbsp;</p>
<p>The <strong>Voidien</strong> are the ancestral subspecies from which all other Voidi descend. They are considered the original, authoritative form of the species, and remain deeply tied to the homeworld&rsquo;s harsh and failing environment.</p>
<p class=\"empty-p\">&nbsp;</p>
<p>Due to increasingly hostile conditions on the Voidi homeworld, survival rates have plummeted. Most Voidi do not survive past their first planetary rotation, often succumbing to the cold before reaching maturity. As a result, Voidien populations are <strong>exceptionally rare</strong>.</p>
<p class=\"empty-p\">&nbsp;</p>
<p>The Voidien who exist today are the result of <strong>generations of deliberate, selective breeding</strong> overseen by the royal line. This process is intended to keep the population small, controlled, and genetically intact. Because of this, Voidien are widely regarded as a <strong>royal subspecies</strong>, and are treated with reverence across Voidi society.</p>
<p class=\"empty-p\">&nbsp;</p>
<p>They are considered the first official depiction of the Voidi as the species is recognized today.</p>
<p class=\"empty-p\">&nbsp;</p>
<h4>Physical Characteristics</h4>
<ul>
<li>
<p><strong>Coloration:</strong><br />Voidien are primarily dark and monotone in coloration. Markings are rare, if ever present. In recent years, lighter skin tones have begun to appear&mdash;an adaptive response intended to absorb more ambient light in an increasingly cold environment.</p>
</li>
<li>
<p><strong>Hands &amp; Feet:</strong><br />Voidien possess the <strong>largest hands</strong> of any subspecies and the <strong>smallest feet</strong>. Dew claws are present, though typically modest in size.</p>
</li>
<li>
<p><strong>Tail Structure:</strong><br />Spikes are <em>not</em> present along the entire tail, appearing only in limited sections.</p>
</li>
</ul>
<h4>Skin &amp; Environmental Response</h4>
<ul>
<li>
<p><strong>Extreme Water Sensitivity:</strong><br />Any contact with water causes <strong>immediate third-degree burns</strong>, comparable to having corrosive acid poured directly onto the skin. Even brief exposure is catastrophic.</p>
</li>
<li>
<p><strong>Surface Fibers &amp; Fur:</strong><br />Rather than being covered in irritating fibers across the entire body, Voidien only possess these fibers in select areas. The rest of their body is coated in a thin, velvet-like fur that aids in insulation and heat retention.</p>
</li>
</ul>
<h4>Cultural Standing</h4>
<p>Voidien are highly respected and often deferred to, not only because of their rarity, but because they represent survival against impossible odds. Their continued existence is seen as a symbol of endurance, tradition, and control in a universe that grows increasingly hostile.</p>
<p><strong>To encounter a Voidien is uncommon. </strong><em><strong>To be one is a burden of legacy.</strong></em></p>
<p class=\"empty-p\">&nbsp;</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":150,\"w\":68,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_300/-150-2x.png\",\"w\":300,\"h\":300}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_100,h_201,x_0,y_0,scl_0.068870523415978/-200h.png\",\"h\":201,\"w\":100,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_180,h_400,x_0,y_0,scl_0.12465564738292/-200h-2x.png\",\"w\":180,\"h\":400}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_900/-300w.png\",\"h\":665,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_1800/-300w-2x.png\",\"w\":600,\"h\":1800}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_832/-375w.png\",\"h\":832,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_1664/-375w-2x.png\",\"w\":750,\"h\":1664}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_406,h_900/-414w.png\",\"h\":900,\"w\":406,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_812,h_1800/-414w-2x.png\",\"w\":812,\"h\":1800}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_113,h_250,x_0,y_0,scl_0.077823691460055/-250t.png\",\"h\":250,\"w\":113,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_225,h_500,x_0,y_0,scl_0.15564738292011/-250t-2x.png\",\"w\":225,\"h\":500}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_158,h_350/-350t.png\",\"h\":350,\"w\":158,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_316,h_700,x_0,y_0,scl_0.21763085399449/-350t-2x.png\",\"w\":316,\"h\":700}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/crop/w_180,h_400,x_0,y_0,scl_0.12465564738292/-400t.png\",\"h\":400,\"w\":180,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_361,h_800,x_0,y_0,scl_0.24862258953168/-400t-2x.png\",\"w\":361,\"h\":800}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_1332/-pre.png\",\"h\":1332,\"w\":600,\"o\":true,\"f\":1591910,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_1332/-pre-2x.png\",\"w\":600,\"h\":1332}]},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_600,h_1332/-pre.png\",\"h\":1332,\"w\":600,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_600,h_1332/-pre-2x.png\",\"w\":600,\"h\":1332}]},{\"t\":\"fullview\",\"r\":0,\"c\":\"/v1/fill/w_1280,h_2839/-fullview.png\",\"h\":2839,\"w\":1280,\"o\":true,\"f\":1591910},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_28,scl_0.0633608815427/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_0,y_56,scl_0.1267217630854/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_0,y_38,scl_0.086088154269972/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_250,x_0,y_76,scl_0.17217630853994/-125s-2x.png\",\"w\":250,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1293687957}\" data-width=\"369\" data-alignment=\"center\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle880l-8f27f572-7e6e-4a71-b492-af154231c0b3.png/v1/fit/w_375,h_832/voidien_by_hermescasp_dle880l-375w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjgzOSIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODgwbC04ZjI3ZjU3Mi03ZTZlLTRhNzEtYjQ5Mi1hZjE1NDIzMWMwYjMucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.lTW26lNpbu-bJElDJymhVx63aU0tFvQzBuaWBNPgCU0\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle880l-8f27f572-7e6e-4a71-b492-af154231c0b3.png/v1/fit/w_750,h_1664/voidien_by_hermescasp_dle880l-375w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjgzOSIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODgwbC04ZjI3ZjU3Mi03ZTZlLTRhNzEtYjQ5Mi1hZjE1NDIzMWMwYjMucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.lTW26lNpbu-bJElDJymhVx63aU0tFvQzBuaWBNPgCU0 2x\" alt=\"Voidien\" /></div>
</figure>
</div>
<p class=\"empty-p\">&nbsp;</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283074352}\" data-width=\"700\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span></figure>
</div>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":37,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_255,h_63/-150-2x.png\",\"w\":255,\"h\":63}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/fill/w_255,h_63/-fullview.png\",\"h\":63,\"w\":255,\"o\":true},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fill/w_255,h_63/-fullview.png\",\"h\":63,\"w\":255,\"o\":true},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_255,h_63/-fullview.png\",\"h\":63,\"w\":255,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_255,h_63/-fullview.png\",\"h\":63,\"w\":255,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_255,h_63/-fullview.png\",\"h\":63,\"w\":255,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_255,h_63/-fullview.png\",\"h\":63,\"w\":255,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_255,h_63/-fullview.png\",\"h\":63,\"w\":255,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_255,h_63/-fullview.png\",\"h\":63,\"w\":255,\"o\":true,\"f\":14296},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_255,h_63/-fullview.png\",\"h\":63,\"w\":255,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":63,\"w\":255,\"o\":true,\"f\":14296},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_63,x_48,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_63,x_48,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":63}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_63,x_48,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_63,x_48,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":63}]}]},\"filetype\":\"png\",\"entityId\":1283520361}\" data-width=\"141\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86and-2815cc4f-e1b3-4272-bb68-06a697a0c865.png/v1/fit/w_150,h_63/feral_by_howlingcrown_dl86and-150.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjMiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZhbmQtMjgxNWNjNGYtZTFiMy00MjcyLWJiNjgtMDZhNjk3YTBjODY1LnBuZyIsIndpZHRoIjoiPD0yNTUifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Iz5e9QBi09sz9axddNIRy6nk-YdTk_6c93xKB8EYrL0\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86and-2815cc4f-e1b3-4272-bb68-06a697a0c865.png/v1/fit/w_255,h_63/feral_by_howlingcrown_dl86and-150-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjMiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZhbmQtMjgxNWNjNGYtZTFiMy00MjcyLWJiNjgtMDZhNjk3YTBjODY1LnBuZyIsIndpZHRoIjoiPD0yNTUifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Iz5e9QBi09sz9axddNIRy6nk-YdTk_6c93xKB8EYrL0 2x\" alt=\"Feral\" width=\"195\" height=\"48\" /></div>
</figure>
</div>
<h4>Feral (LIMITED)</h4>
<p><em>Contested Subspecies</em></p>
<p class=\"empty-p\">&nbsp;</p>
<p>The <strong>Feral</strong> are the second oldest and second rarest known subspecies of Voidi. Their classification has long been debated, with some factions questioning whether Ferals should be considered a true subspecies at all. Unlike other rare Voidi, Ferals are not scarce due to low population numbers&mdash;but because of their extraordinary ability to remain unseen.</p>
<p>Ferals are masters of concealment. Entire communities exist without detection for generations.</p>
<p class=\"empty-p\">&nbsp;</p>
<h4>Habitat &amp; Society</h4>
<ul>
<li>
<p><strong>Homeworld Dwellers:</strong><br />Ferals inhabit the vast, hostile mountain ranges of the Voidi homeworld&mdash;regions considered nearly uninhabitable by most other subspecies.</p>
</li>
<li>
<p><strong>Tightly Knit Communities:</strong><br />Feral societies are small, insular, and deeply bonded. Loyalty to the group is absolute, and outsiders are rarely tolerated.</p>
</li>
<li>
<p><strong>Aggression &amp; Defense:</strong><br />Ferals are widely regarded as the most aggressive Voidi subspecies. This is not without cause&mdash;historically, they were hunted by the royal line for their <strong>valuable pelts and ivory</strong>, leaving deep generational scars.</p>
</li>
</ul>
<h4>Physical Characteristics</h4>
<ul>
<li>
<p><strong>Fur Coverage:</strong><br />Thick, soft fur covers many parts of the body, offering protection against extreme cold and aiding in silent movement through mountainous terrain.</p>
</li>
<li>
<p><strong>Coloration &amp; Markings:</strong><br />Markings are minimal to nearly nonexistent, often appearing only as small accent details. Overall coloration is muted and optimized for camouflage.</p>
</li>
<li>
<p><strong>Thermal Vents:</strong><br />Vent thickness varies widely between individuals. Due to this variation, vents may display <strong>multiple colors</strong>, rather than a single consistent glow.</p>
</li>
<li>
<p><strong>Dewclaws and claws:</strong><br />It is common for large dewclaws to be present on this species. All claws are usually slightly serrated to assist in climbing icy slopes.</p>
</li>
</ul>
<h4>Structural Traits</h4>
<ul>
<li>
<p><strong>Hands &amp; Fingers:</strong><br />Ferals possess the <strong>longest fingers</strong> of any Voidi subspecies, paired with generally smaller palms. This grants exceptional grip and dexterity when climbing or navigating uneven terrain.</p>
</li>
<li>
<p><strong>Body Proportions:</strong><br />The middle body section is well proportioned and notably thicker than that of Voidien, contributing to endurance and insulation.</p>
</li>
</ul>
<h4>Cultural Perception</h4>
<p>To some, Ferals are ghosts of the mountains&mdash;dangerous, unpredictable, and best left undisturbed. To others, they are survivors who endured betrayal and violence long enough to disappear entirely.</p>
<p><strong>Whether they are a subspecies by blood or by adaptation remains unresolved.</strong><strong><br /></strong><em><strong>The Ferals do not care.</strong></em></p>
<p class=\"empty-p\">&nbsp;</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":150,\"w\":76,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_300/-150-2x.png\",\"w\":300,\"h\":300}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/fill/w_102,h_200/-200h.png\",\"h\":200,\"w\":102,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_204,h_400,x_0,y_0,scl_0.12530712530713/-200h-2x.png\",\"w\":204,\"h\":400}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_900/-300w.png\",\"h\":590,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_1800/-300w-2x.png\",\"w\":600,\"h\":1800}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_737/-375w.png\",\"h\":737,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_1474/-375w-2x.png\",\"w\":750,\"h\":1474}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_814/-414w.png\",\"h\":814,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_828,h_1628/-414w-2x.png\",\"w\":828,\"h\":1628}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_127,h_250/-250t.png\",\"h\":250,\"w\":127,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_254,h_500,x_0,y_0,scl_0.15663390663391/-250t-2x.png\",\"w\":254,\"h\":500}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_178,h_350/-350t.png\",\"h\":350,\"w\":178,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_356,h_700/-350t-2x.png\",\"w\":356,\"h\":700}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/crop/w_204,h_400,x_0,y_0,scl_0.12530712530713/-400t.png\",\"h\":400,\"w\":203,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_407,h_800/-400t-2x.png\",\"w\":407,\"h\":800}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_637,h_1253/-pre.png\",\"h\":1253,\"w\":637,\"o\":true,\"f\":1268194,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_637,h_1253/-pre-2x.png\",\"w\":637,\"h\":1253}]},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_637,h_1253/-pre.png\",\"h\":1253,\"w\":637,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_637,h_1253/-pre-2x.png\",\"w\":637,\"h\":1253}]},{\"t\":\"fullview\",\"r\":0,\"c\":\"/v1/fill/w_1280,h_2516/-fullview.png\",\"h\":2516,\"w\":1280,\"o\":true,\"f\":1268194},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_22,scl_0.056511056511057/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_0,y_44,scl_0.11302211302211/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_0,y_30,scl_0.076781326781327/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_250,x_0,y_60,scl_0.15356265356265/-125s-2x.png\",\"w\":250,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1293688086}\" data-width=\"379\" data-alignment=\"center\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle8846-37df936a-a089-496f-b227-48cf2838c659.png/v1/fit/w_414,h_814/feral_by_hermescasp_dle8846-414w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjUxNiIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0Ni0zN2RmOTM2YS1hMDg5LTQ5NmYtYjIyNy00OGNmMjgzOGM2NTkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.J5LVdGVqFgsNIxB2YmQA7SHsaILGvg1jiCB2jSAF3eM\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle8846-37df936a-a089-496f-b227-48cf2838c659.png/v1/fit/w_828,h_1628/feral_by_hermescasp_dle8846-414w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjUxNiIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0Ni0zN2RmOTM2YS1hMDg5LTQ5NmYtYjIyNy00OGNmMjgzOGM2NTkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.J5LVdGVqFgsNIxB2YmQA7SHsaILGvg1jiCB2jSAF3eM 2x\" alt=\"Feral\" /></div>
</figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283074352}\" data-width=\"700\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span></figure>
</div>
<p class=\"empty-p\"><img style=\"font-size: 12.8px; display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86awy-b7690789-7b66-4738-af20-d659224cf0b1.png/v1/fit/w_300,h_85/hybrid_by_howlingcrown_dl86awy-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODUiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZhd3ktYjc2OTA3ODktN2I2Ni00NzM4LWFmMjAtZDY1OTIyNGNmMGIxLnBuZyIsIndpZHRoIjoiPD0zMzAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.vD3kdVx9AQZAmgMLkqL5c8BIdi0S1bu4e0-ngrrOIQg\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86awy-b7690789-7b66-4738-af20-d659224cf0b1.png/v1/fit/w_330,h_85/hybrid_by_howlingcrown_dl86awy-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODUiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZhd3ktYjc2OTA3ODktN2I2Ni00NzM4LWFmMjAtZDY1OTIyNGNmMGIxLnBuZyIsIndpZHRoIjoiPD0zMzAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.vD3kdVx9AQZAmgMLkqL5c8BIdi0S1bu4e0-ngrrOIQg 2x\" alt=\"Hybrid\" width=\"242\" height=\"62\" /></p>
<h4>Hybrid</h4>
<p><em>Unrecognized Subspecies &mdash; Artificial Lineage</em></p>
<p class=\"empty-p\">&nbsp;</p>
<p>Hybrids are often referred to&mdash;both reverently and derisively&mdash;as the <em>&ldquo;designer&rdquo;</em> Voidi. Through deliberate genetic splicing, nearly any trait can be engineered if the correct genes are combined. These Voidi are <strong>never born naturally</strong> and are always incubated off-planet under tightly controlled conditions designed to produce specific results.</p>
<p>What emerges is beauty without balance.</p>
<p class=\"empty-p\">&nbsp;</p>
<h4>Creation &amp; Development</h4>
<ul>
<li>
<p><strong>Artificial Incubation:</strong><br />Hybrids are born under highly specific temperature, gravity, and chemical standards tailored to the desired outcome. Even minor deviations can result in instability.</p>
</li>
<li>
<p><strong>Designer Markings:</strong><br />Hybrids frequently display stunning, complex, and brightly colored markings&mdash;often far more vivid than any naturally occurring Voidi subspecies.</p>
</li>
</ul>
<h4>Biological Instability</h4>
<ul>
<li>
<p><strong>Ivory Overproduction:</strong><br />A common and dangerous side effect of hybridization is excessive ivory growth. This can place immense pressure on the adrenaline &ldquo;hearts,&rdquo; sometimes crushing them prematurely and causing early death.</p>
</li>
<li>
<p><strong>Horn &amp; Dental Growth:</strong><br />Ivory overproduction often results in unnaturally long, heavy horns and teeth. If left unchecked, these can grow to the point of <strong>piercing the eyes</strong> or causing internal damage.</p>
</li>
</ul>
<h4>Physical Characteristics</h4>
<ul>
<li>
<p><strong>Limbs &amp; Build:</strong><br />Limbs are typically thicker and heavier than average. Large feet and toes are common, though the padding on the soles is thin, resulting in poor sound dampening when walking.</p>
</li>
<li>
<p><strong>Water Resistance:</strong><br />Unlike other Voidi subspecies, Hybrids are <strong>nearly completely resistant to water</strong>, suffering little to no burning on contact.</p>
</li>
<li>
<p><strong>Vents:</strong><br />Vents are often thin, small, or poorly spaced, reducing their effectiveness.</p>
</li>
<li>
<p><strong>Spines:</strong><br />Spines may be present or absent. When present, they are frequently malformed&mdash;too short, too thin, or too small to provide meaningful protection.</p>
</li>
<li>
<p><strong>Palms &amp; Skin:</strong><br />Palms rarely glow due to thicker skin. Small but prominent patches of fur may appear across the body.</p>
</li>
<li>
<p><strong>Dew Claws:</strong><br />Dew claws are present but are the <strong>smallest of any Voidi subspecies</strong>.</p>
</li>
</ul>
<h4>Cultural Standing</h4>
<p>Among native Voidi populations, Hybrids are widely viewed as <strong>unholy</strong>, artificial, and unnatural&mdash;an affront to survival through adaptation. They are often called <em>freaks of nature</em>, living proof that some boundaries were never meant to be crossed.</p>
<p><strong>To others, they are living experiments&mdash;</strong><em><strong>beautiful, dangerous, and tragic in equal measure.</strong></em></p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":150,\"w\":86,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_300/-150-2x.png\",\"w\":300,\"h\":300}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/fill/w_114,h_200/-200h.png\",\"h\":200,\"w\":114,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_228,h_400/-200h-2x.png\",\"w\":228,\"h\":400}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_900/-300w.png\",\"h\":526,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_1800/-300w-2x.png\",\"w\":600,\"h\":1800}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_657/-375w.png\",\"h\":657,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_1314/-375w-2x.png\",\"w\":750,\"h\":1314}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_726/-414w.png\",\"h\":726,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_828,h_1452/-414w-2x.png\",\"w\":828,\"h\":1452}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_143,h_250,x_0,y_0,scl_0.080790960451977/-250t.png\",\"h\":250,\"w\":143,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_285,h_500/-250t-2x.png\",\"w\":285,\"h\":500}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/crop/w_200,h_350,x_0,y_0,scl_0.11299435028249/-350t.png\",\"h\":350,\"w\":200,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_399,h_700,x_0,y_0,scl_0.22598870056497/-350t-2x.png\",\"w\":399,\"h\":700}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_228,h_400/-400t.png\",\"h\":400,\"w\":228,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_456,h_800,x_0,y_0,scl_0.25819209039548/-400t-2x.png\",\"w\":456,\"h\":800}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_675,h_1184/-pre.png\",\"h\":1184,\"w\":675,\"o\":true,\"f\":1449444,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_675,h_1184/-pre-2x.png\",\"w\":675,\"h\":1184}]},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_675,h_1184/-pre.png\",\"h\":1184,\"w\":675,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_675,h_1184/-pre-2x.png\",\"w\":675,\"h\":1184}]},{\"t\":\"fullview\",\"r\":0,\"c\":\"/v1/fill/w_1280,h_2244/-fullview.png\",\"h\":2244,\"w\":1280,\"o\":true,\"f\":1449444},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_17,scl_0.051977401129943/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_0,y_35,scl_0.10395480225989/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_0,y_24,scl_0.070621468926554/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_250,x_0,y_47,scl_0.14124293785311/-125s-2x.png\",\"w\":250,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1293688080}\" data-width=\"368\" data-alignment=\"center\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle8840-0fb7b034-4ec3-49e5-b848-897f028016d9.png/v1/fit/w_375,h_657/hybrid_by_hermescasp_dle8840-375w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI0NCIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0MC0wZmI3YjAzNC00ZWMzLTQ5ZTUtYjg0OC04OTdmMDI4MDE2ZDkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ._mfNv_mLTPUlu6uwqj_yoqTH9X8RAvVaCSSXazRbh8U\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle8840-0fb7b034-4ec3-49e5-b848-897f028016d9.png/v1/fit/w_750,h_1314/hybrid_by_hermescasp_dle8840-375w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI0NCIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0MC0wZmI3YjAzNC00ZWMzLTQ5ZTUtYjg0OC04OTdmMDI4MDE2ZDkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ._mfNv_mLTPUlu6uwqj_yoqTH9X8RAvVaCSSXazRbh8U 2x\" alt=\"Hybrid\" /></div>
</figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283074352}\" data-width=\"700\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span></figure>
</div>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":30,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_66/-150-2x.png\",\"w\":300,\"h\":66}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_66,x_16,y_0,scl_1/-200h.png\",\"h\":66,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_335,h_66/-200h-2x.png\",\"w\":335,\"h\":66}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_66/-300w.png\",\"h\":59,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_335,h_66/-300w-2x.png\",\"w\":335,\"h\":66}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fill/w_335,h_66/-fullview.png\",\"h\":66,\"w\":335,\"o\":true},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fill/w_335,h_66/-fullview.png\",\"h\":66,\"w\":335,\"o\":true},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_335,h_66/-fullview.png\",\"h\":66,\"w\":335,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_335,h_66/-fullview.png\",\"h\":66,\"w\":335,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_335,h_66/-fullview.png\",\"h\":66,\"w\":335,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_335,h_66/-fullview.png\",\"h\":66,\"w\":335,\"o\":true,\"f\":16741},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_335,h_66/-fullview.png\",\"h\":66,\"w\":335,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":66,\"w\":335,\"o\":true,\"f\":16741},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_66,x_67,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_66,x_67,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":66}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_66,x_67,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_66,x_67,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":66}]}]},\"filetype\":\"png\",\"entityId\":1283521059}\" data-width=\"195\" data-alignment=\"left\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86b6r-44805e2c-d62e-4558-bf0c-3a6d91efe6dd.png/v1/fit/w_300,h_66/voidian_by_howlingcrown_dl86b6r-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjYiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZiNnItNDQ4MDVlMmMtZDYyZS00NTU4LWJmMGMtM2E2ZDkxZWZlNmRkLnBuZyIsIndpZHRoIjoiPD0zMzUifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.THvcFfGgpB6nZbTfsOInwRqU-FhBlMoXIrmi_Qifavc\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86b6r-44805e2c-d62e-4558-bf0c-3a6d91efe6dd.png/v1/fit/w_335,h_66/voidian_by_howlingcrown_dl86b6r-300w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjYiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZiNnItNDQ4MDVlMmMtZDYyZS00NTU4LWJmMGMtM2E2ZDkxZWZlNmRkLnBuZyIsIndpZHRoIjoiPD0zMzUifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.THvcFfGgpB6nZbTfsOInwRqU-FhBlMoXIrmi_Qifavc 2x\" alt=\"Voidian\" width=\"259\" height=\"51\" /></div>
</figure>
</div>
<p class=\"empty-p\">&nbsp;</p>
<h4>Voidian</h4>
<p><em>Recognized Subspecies &mdash; Modern Lineage</em></p>
<p class=\"empty-p\">&nbsp;</p>
<p>The <strong>Voidian</strong> are the most common Voidi subspecies and are widely regarded as the <em>new age</em> of the species. Where earlier lineages struggled to survive a dying homeworld, Voidians represent successful adaptation beyond it.</p>
<p>They are the natural evolutionary progression of the Voidien line, shaped by relocation, stability, and long-term survival on a new homeworld.</p>
<p class=\"empty-p\">&nbsp;</p>
<h4>Physical Characteristics</h4>
<ul>
<li>
<p><strong>Balanced Proportions:</strong><br />Voidians possess well-filled, accurately proportioned bodies. Their limbs are strong, well-built, and suited for sustained activity.</p>
</li>
<li>
<p><strong>Thermal Vents:</strong><br />Vents are evenly spaced and consistently functional. A visible glow is present, particularly during exertion or heat regulation.</p>
</li>
<li>
<p><strong>Movement &amp; Stealth:</strong><br />Feet are heavily padded, allowing for near-silent movement across most terrain.</p>
</li>
</ul>
<h4>Structural Adaptations</h4>
<ul>
<li>
<p><strong>Defensive Ivory Spikes:</strong><br />Extra ivory spikes are present on the elbows of the primary (largest) arms. These serve as an adaptive defensive measure, capable of being brought into use when necessary.</p>
</li>
<li>
<p><strong>Stability Over Extremes:</strong><br />Unlike Hybrid or Feral subspecies, Voidians exhibit fewer extreme traits, favoring reliability and survivability over specialization.</p>
</li>
</ul>
<h4>Cultural Standing</h4>
<p>Voidians are considered the baseline of modern Voidi society. They are neither revered nor feared&mdash;only expected. Their prevalence has allowed Voidi culture to stabilize, expand, and persist beyond the limitations of their origin.</p>
<p><strong>Where Voidien are legacy,</strong><em><strong><br /></strong></em><em><strong>Voidians are continuity.</strong></em></p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":150,\"w\":84,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_300/-150-2x.png\",\"w\":300,\"h\":300}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/fill/w_112,h_200/-200h.png\",\"h\":200,\"w\":112,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_224,h_400,x_0,y_0,scl_0.12368856985091/-200h-2x.png\",\"w\":224,\"h\":400}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_900/-300w.png\",\"h\":537,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_600,h_1800/-300w-2x.png\",\"w\":600,\"h\":1800}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_671/-375w.png\",\"h\":671,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_750,h_1342/-375w-2x.png\",\"w\":750,\"h\":1342}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_741/-414w.png\",\"h\":741,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_828,h_1482/-414w-2x.png\",\"w\":828,\"h\":1482}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/crop/w_140,h_250,x_0,y_0,scl_0.077305356156819/-250t.png\",\"h\":250,\"w\":140,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_279,h_500,x_0,y_0,scl_0.15461071231364/-250t-2x.png\",\"w\":279,\"h\":500}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/crop/w_196,h_350,x_0,y_0,scl_0.10822749861955/-350t.png\",\"h\":350,\"w\":196,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_391,h_700/-350t-2x.png\",\"w\":391,\"h\":700}]},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/crop/w_224,h_400,x_0,y_0,scl_0.12368856985091/-400t.png\",\"h\":400,\"w\":223,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_447,h_800/-400t-2x.png\",\"w\":447,\"h\":800}]},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_668,h_1196/-pre.png\",\"h\":1196,\"w\":668,\"o\":true,\"f\":2995837,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_668,h_1196/-pre-2x.png\",\"w\":668,\"h\":1196}]},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_668,h_1196/-pre.png\",\"h\":1196,\"w\":668,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_668,h_1196/-pre-2x.png\",\"w\":668,\"h\":1196}]},{\"t\":\"fullview\",\"r\":0,\"c\":\"/v1/fill/w_1280,h_2291/-fullview.png\",\"h\":2291,\"w\":1280,\"o\":true,\"f\":2995837},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_0,y_18,scl_0.050800662617338/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_184,x_0,y_36,scl_0.10160132523468/-92s-2x.png\",\"w\":184,\"h\":184}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_125,x_0,y_25,scl_0.069022639425732/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_250,x_0,y_49,scl_0.13804527885146/-125s-2x.png\",\"w\":250,\"h\":250}]}]},\"filetype\":\"png\",\"entityId\":1293688112}\" data-width=\"356\" data-alignment=\"center\"&gt;
<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle884w-bb1474a1-8e3d-4b33-8107-56dd22258169.png/v1/fit/w_375,h_671/voidian_by_hermescasp_dle884w-375w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI5MSIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0dy1iYjE0NzRhMS04ZTNkLTRiMzMtODEwNy01NmRkMjIyNTgxNjkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.sAV5b7W0xZK5l7ZaryytwNFtt__1o3c-nzGtGUmsLq8\" srcset=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle884w-bb1474a1-8e3d-4b33-8107-56dd22258169.png/v1/fit/w_750,h_1342/voidian_by_hermescasp_dle884w-375w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI5MSIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0dy1iYjE0NzRhMS04ZTNkLTRiMzMtODEwNy01NmRkMjIyNTgxNjkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.sAV5b7W0xZK5l7ZaryytwNFtt__1o3c-nzGtGUmsLq8 2x\" alt=\"Voidian\" /></div>
</figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":31,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_107/-150-2x.png\",\"w\":300,\"h\":107}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_100,x_93,y_0,scl_0.93457943925234/-200h.png\",\"h\":100,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-200h-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_107/-300w.png\",\"h\":61,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-300w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_77/-375w.png\",\"h\":77,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-375w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_85/-414w.png\",\"h\":85,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_523,h_107/-414w-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_500,h_102/-250t.png\",\"h\":102,\"w\":500,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_523,h_107/-250t-2x.png\",\"w\":523,\"h\":107}]},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_523,h_107/-fullview.png\",\"h\":107,\"w\":523,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":107,\"w\":523,\"o\":true,\"f\":20986},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_92,x_89,y_0,scl_0.85981308411215/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_107,x_104,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":107}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_107,x_104,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_107,x_104,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":107}]}]},\"filetype\":\"png\",\"entityId\":1283074352}\" data-width=\"700\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span></figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\">-150.png\",\"h\":22,\"w\":150,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_300,h_60/-150-2x.png\",\"w\":300,\"h\":60}]},{\"t\":\"200H\",\"r\":0,\"c\":\"/v1/crop/w_302,h_60,x_57,y_0,scl_1/-200h.png\",\"h\":60,\"w\":302,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fill/w_417,h_60/-200h-2x.png\",\"w\":417,\"h\":60}]},{\"t\":\"300W\",\"r\":0,\"c\":\"/v1/fit/w_300,h_60/-300w.png\",\"h\":43,\"w\":300,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_417,h_60/-300w-2x.png\",\"w\":417,\"h\":60}]},{\"t\":\"375W\",\"r\":0,\"c\":\"/v1/fit/w_375,h_54/-375w.png\",\"h\":54,\"w\":375,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_417,h_60/-375w-2x.png\",\"w\":417,\"h\":60}]},{\"t\":\"414W\",\"r\":0,\"c\":\"/v1/fit/w_414,h_60/-414w.png\",\"h\":60,\"w\":414,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/fit/w_417,h_60/-414w-2x.png\",\"w\":417,\"h\":60}]},{\"t\":\"250T\",\"r\":0,\"c\":\"/v1/fill/w_417,h_60/-fullview.png\",\"h\":60,\"w\":417,\"o\":true},{\"t\":\"350T\",\"r\":0,\"c\":\"/v1/fill/w_417,h_60/-fullview.png\",\"h\":60,\"w\":417,\"o\":true},{\"t\":\"400T\",\"r\":0,\"c\":\"/v1/fill/w_417,h_60/-fullview.png\",\"h\":60,\"w\":417,\"o\":true},{\"t\":\"preview\",\"r\":0,\"c\":\"/v1/fill/w_417,h_60/-fullview.png\",\"h\":60,\"w\":417,\"o\":true,\"f\":11134},{\"t\":\"social_preview\",\"r\":0,\"c\":\"/v1/fill/w_417,h_60/-fullview.png\",\"h\":60,\"w\":417,\"o\":true},{\"t\":\"fullview\",\"r\":1,\"h\":60,\"w\":417,\"o\":true,\"f\":11134},{\"t\":\"92S\",\"r\":0,\"c\":\"/v1/crop/w_92,h_60,x_89,y_0,scl_1/-92s.png\",\"h\":92,\"w\":92,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_184,h_60,x_89,y_0,scl_1/-92s-2x.png\",\"w\":184,\"h\":60}]},{\"t\":\"125S\",\"r\":0,\"c\":\"/v1/crop/w_125,h_60,x_89,y_0,scl_1/-125s.png\",\"h\":125,\"w\":125,\"o\":true,\"ss\":[{\"x\":2,\"c\":\"/v1/crop/w_250,h_60,x_89,y_0,scl_1/-125s-2x.png\",\"w\":250,\"h\":60}]}]},\"filetype\":\"png\",\"entityId\":1283495090}\" data-alignment=\"center\"&gt;<span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl85r5e-650ef7fa-02a3-4259-a4dd-99da8b1f0e3a.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NXI1ZS02NTBlZjdmYS0wMmEzLTQyNTktYTRkZC05OWRhOGIxZjBlM2EucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.WADg45K4lZBeYYBBnCxTP-BhhMDgab7lPwyOMT9Ka5Q\" alt=\"Reversed-divider-legacies\" width=\"361\" height=\"52\" /></span></figure>
</div>
<h2 style=\"text-align: center;\">Designing your character?</h2>
<p>Having a hard time drawing your character?</p>
<p>Feel free to edit one of our <a href=\"https://www.deviantart.com/stash/21eolcskctb0\" rel=\"noopener noreferrer nofollow ugc\">bases</a>!</p>
<p>Subspecies are still being made!</p>
<p class=\"empty-p\">&nbsp;</p>
<p>Currently, we do not have traits! Our only rules is please follow the description of the subspecies you have chosen. For example, Offplanet cannot have fur because that is a feral trait. Voidian cannot have a fleshy tail because that is a hybrid trait.<br /><br />Over time, we will create traits! If your character already has that trait before its official creation, then you get to keep it for free! <br /><br />All arms do not need to be present on the reference photo, but we expect each voidi to have 6 arms by default.</p>
<p><br />When submitting your character, please dm our group with this form<br /><br /><strong>Character Image:</strong><br /><strong>Subspecies:</strong><br /><strong>Artist credit:</strong></p>', NULL, '1', '2026-02-24 04:31:06', '2026-02-24 23:18:26', '<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84d8d-9ffc1d0a-00ba-42f3-a58e-596533fc63e1.png/v1/fill/w_800,h_143/voidi_banner3_by_howlingcrown_dl84d8d-400t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTg3IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0ZDhkLTlmZmMxZDBhLTAwYmEtNDJmMy1hNThlLTU5NjUzM2ZjNjNlMS5wbmciLCJ3aWR0aCI6Ijw9MTA0NyJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.lsh7azDzGONKNL5DH6TDYAAgmRqB6KVKkQAbNE4JxZk\" alt=\"Voidi-banner3\" /></div>
</figure>
</div>
<h2 style=\"text-align:center;\">The Voidi Species</h2>
<h4 style=\"text-align:center;\"><em>Primary Species of Dreadfarer</em></h4>
<p class=\"empty-p\"> </p>
<p>The <strong>Voidi</strong> are the native species of the Dreadfarer universe, originating from a starless world locked in extreme cold for most of its year. Adapted to darkness, volatile environments, and long-term survival, Voidi physiology is unlike that of most known species.<br /><br /></p>
<p>While they share a common biological framework, Voidi are divided into <strong>five recognized subspecies</strong>, shaped by environment, isolation, and external influence.</p>
<hr />
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84god-d860403f-cdcb-45c8-9d2b-c28236844a21.png/v1/fill/w_106,h_200/artemis_decal_by_howlingcrown_dl84god-200h.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI4IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0Z29kLWQ4NjA0MDNmLWNkY2ItNDVjOC05ZDJiLWMyODIzNjg0NGEyMS5wbmciLCJ3aWR0aCI6Ijw9MTIxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.OQ_GGZZsR3N_OPUfcMGAMN_pmOfeoofFcUt77xMULh4\" alt=\"Artemis-decal\" /></div>
</figure>
</div>
<h2 style=\"text-align:center;\">Core Voidi Biology</h2>
<p style=\"text-align: center;\">All Voidi share the following traits, regardless of subspecies:</p>
<p class=\"empty-p\"> </p>
<h3>Environmental Adaptations</h3>
<ul>
<li>
<p><strong>Extreme Cold Origin:</strong><br />Voidi evolved on a planet without a sun for the vast majority of the year. As a result, their bodies are built to retain and regulate heat aggressively.</p>
</li>
<li>
<p><strong>Thermal Vents:</strong><br />Colorful vents located around the body help leech excess heat when necessary. These vents glow faintly and are most vibrant when the Voidi is exerting themselves or overheated.</p>
</li>
<li>
<p><strong>Bioluminescent Blood:</strong><br />Voidi blood glows due to unique chemical adaptations tied to their sunless homeworld. This glow is often visible beneath thin skin, especially at joints, vents, palms, and wounds.<br /><span><br />Skin &amp; Sensory Traits</span></p>
</li>
</ul>
<ul>
<li>
<p><strong>Volatile Reaction to Water:</strong><br />Voidi skin reacts <strong>violently to prolonged water exposure</strong>. Moisture can cause irritation, pain, or chemical reactions depending on exposure and subspecies.</p>
</li>
<li>
<p><strong>Irritating Fibers:</strong><br />Their skin is covered in incredibly fine, hair-like fibers—similar to a tarantula’s—that can irritate bare skin on contact. This acts as both a sensory organ and a passive defense.</p>
</li>
<li>
<p><strong>Sensitive Palms/Vents:</strong><br />Voidi palms/vents are extremely thin and nerve-dense, causing them to glow faintly. They are highly sensitive to touch, pressure, and temperature.</p>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\"><span><br />Skeletal &amp; Survival Systems</span></figure>
</div>
</li>
<li>
<p><strong>Secondary Pseudo-Spine:</strong><br />In addition to their main spine, Voidi possess a secondary pseudo-spine that protects specialized <strong>blood and adrenaline pockets</strong> located near the neck.</p>
</li>
<li>
<p><strong>Adrenaline Hearts:</strong><br />These pockets—often referred to as secondary “hearts”—burst when a Voidi is near death, flooding the body with adrenaline and energy. This grants a final chance to escape a lethal threat. Voidi can have up to three hearts, but it can range with genetics.</p>
</li>
</ul>
<h3>Emotional Indicators</h3>
<ul>
<li>
<p><strong>Cheek Fluffs:</strong><br />Voidi cheek fluffs are highly reactive to emotion.</p>
<ul>
<li>
<p>Soft and fluffy when happy, flustered, or relaxed</p>
</li>
<li>
<p>Spiky and prickly when irritated, stressed, or threatened</p>
</li>
</ul>
</li>
</ul>
<p>This reaction is involuntary and often betrays their emotional state.</p>
<hr />
<h3>Movement &amp; Posture</h3>
<ul>
<li>
<p><strong>Quadrupedal Capable:</strong><br />Voidi can crawl and move efficiently on all fours, particularly when navigating tight spaces, rough terrain, or during combat or flight responses.</p>
</li>
</ul>
<div class=\"B2Wm85 yeazx5\">
<figure class=\"Wcfucs\" title=\"\"></figure>
</div>
<h3>Arm Structure (All Subspecies)</h3>
<p>Every Voidi has <strong>six arms</strong>, though not all may be depicted visually.</p>
<ul>
<li>
<p><strong>Inner Pair:</strong><br />Small arms tucked close to the body, best for fine motor control and handling delicate objects.</p>
</li>
<li>
<p><strong>Secondary Pair:</strong><br />Medium-sized arms used for tasks close to the torso.</p>
</li>
<li>
<p><strong>Primary Pair:</strong><br />Large, fully capable arms used for combat, lifting, and general interaction.</p>
</li>
</ul>
<hr />
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl84msl-4d3fdfb4-0c44-4410-84e1-0c37c0ee7abc.png/v1/fill/w_500,h_164/divider_top__by_howlingcrown_dl84msl-250t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTk0IiwicGF0aCI6Ii9mLzJhZmRhMjZhLTNlMjEtNGIyOC1hZDY5LTBlYWMzM2RlMWI4YS9kbDg0bXNsLTRkM2ZkZmI0LTBjNDQtNDQxMC04NGUxLTBjMzdjMGVlN2FiYy5wbmciLCJ3aWR0aCI6Ijw9NTkxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.wSO9AMPB5paBAmQjfj_W6lK-DkhOdezGG9pvFwR4FXQ\" alt=\"Divider Top\" width=\"402\" height=\"132\" /></div>
</figure>
</div>
<h2 style=\"text-align:center;\">Subspecies Overview</h2>
<p style=\"text-align: center;\">While biologically similar, Voidi subspecies vary greatly in appearance and cultural influence.</p>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl867h1-034e00b7-79fa-4b55-87d3-046239a3d6ce.png/v1/fit/w_300,h_72/off_planet_by_howlingcrown_dl867h1-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzIiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODY3aDEtMDM0ZTAwYjctNzlmYS00YjU1LTg3ZDMtMDQ2MjM5YTNkNmNlLnBuZyIsIndpZHRoIjoiPD01MDcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.QNUWHMtEk5xBoRpxzHiXgQ1x0qd3BsR1-0m3qtnqDIM\" alt=\"Off-planet\" /></div>
</figure>
</div>
<p class=\"empty-p\"> </p>
<h4>Off-Planet</h4>
<p><em>Recognized Subspecies</em></p>
<p class=\"empty-p\"> </p>
<p>Off-Planet Voidi are those born and raised in artificial nurseries beyond their homeworld. While these facilities attempt to replicate native conditions, they rarely achieve the precise temperature, gravity, and atmospheric balance required for ideal development.</p>
<p>As a result, Off-Planet Voidi often display noticeable physical deviations.</p>
<p class=\"empty-p\"> </p>
<h4>Developmental Traits</h4>
<ul>
<li>
<p><strong>Altered Proportions:</strong><br />Reduced gravity during gestation commonly results in a longer middle body section and thicker, heavier legs.</p>
</li>
<li>
<p><strong>Vent Irregularities:</strong><br />Vent spacing is often uneven or misplaced, a side effect of incorrect thermal regulation during early growth.</p>
</li>
<li>
<p><strong>Hand Structure Variations:</strong><br />An unsplit finger is a frequent occurrence. Palms often do not glow due to thicker skin forming in the area.</p>
</li>
<li>
<p><strong>Markings &amp; Coloration:</strong><br />Heavy markings and vibrant patterns are extremely common. These are caused by improper temperature control and acidity levels within the nursery environment.</p>
</li>
</ul>
<h4>Skin &amp; Defensive Adaptations</h4>
<ul>
<li>
<p><strong>Thicker Flesh:</strong><br />Off-Planet Voidi often develop thicker skin and flesh, which may allow them a few extra moments of contact with water before burning occurs.</p>
</li>
<li>
<p><strong>Irritating Fibers:</strong><br />The fine, irritating hairs that typically coat Voidi skin may be reduced, uneven, or entirely absent in this subspecies.</p>
</li>
</ul>
<h4>Skeletal &amp; Structural Differences</h4>
<ul>
<li>
<p><strong>Dew Claw Absence:</strong><br />A lack of dew claws is common.</p>
</li>
<li>
<p><strong>Tail Spines:</strong><br />Unlike many native Voidi, Off-Planet individuals frequently develop spines along the <strong>entire length of the tail</strong>, rather than in limited sections.</p>
</li>
</ul>
<h4>Cultural Notes</h4>
<p class=\"empty-p\"> </p>
<p>Off-Planet Voidi are often visually distinct from their homeworld counterparts and may stand out immediately among other Voidi populations. While biologically sound, they are sometimes viewed as unconventional—or unpredictable—by more traditional groups.</p>
<p>Despite this, many Off-Planet Voidi adapt well to interstellar life, their varied traits reflecting the environments that shaped them. Off-planet Voidi are known to be much more friendly to others, nothing like their aggressive counterparts.</p>
<p><strong>They are forged by stars, </strong><em><strong>living on the edge of home.</strong></em></p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle884i-7af2fa4e-c46c-42ad-8daa-a8557af46062.png/v1/fit/w_414,h_863/offplanet_by_hermescasp_dle884i-414w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjY2OSIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0aS03YWYyZmE0ZS1jNDZjLTQyYWQtOGRhYS1hODU1N2FmNDYwNjIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Yl89cKqZOi8Kw4aUDgVl2YN_Bg8-cLvSy6nXb90Y1Hs\" alt=\"Offplanet\" /></div>
</figure>
</div>
<p class=\"empty-p\"> </p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span></figure>
</div>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86958-9a7b347e-68c8-4cc4-8dcd-30e7552dc37f.png/v1/fit/w_300,h_66/voidien_by_howlingcrown_dl86958-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjYiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODY5NTgtOWE3YjM0N2UtNjhjOC00Y2M0LThkY2QtMzBlNzU1MmRjMzdmLnBuZyIsIndpZHRoIjoiPD0zNDcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.hbSzk07JCtyXp0HzCK4GEPzRtEqA67KPhmErgDtqDZA\" alt=\"Voidien\" width=\"253\" height=\"48\" /></div>
</figure>
</div>
<h4>Voidien (LIMITED)</h4>
<p><em>Recognized Subspecies — Parent Lineage</em></p>
<p class=\"empty-p\"> </p>
<p>The <strong>Voidien</strong> are the ancestral subspecies from which all other Voidi descend. They are considered the original, authoritative form of the species, and remain deeply tied to the homeworld’s harsh and failing environment.</p>
<p class=\"empty-p\"> </p>
<p>Due to increasingly hostile conditions on the Voidi homeworld, survival rates have plummeted. Most Voidi do not survive past their first planetary rotation, often succumbing to the cold before reaching maturity. As a result, Voidien populations are <strong>exceptionally rare</strong>.</p>
<p class=\"empty-p\"> </p>
<p>The Voidien who exist today are the result of <strong>generations of deliberate, selective breeding</strong> overseen by the royal line. This process is intended to keep the population small, controlled, and genetically intact. Because of this, Voidien are widely regarded as a <strong>royal subspecies</strong>, and are treated with reverence across Voidi society.</p>
<p class=\"empty-p\"> </p>
<p>They are considered the first official depiction of the Voidi as the species is recognized today.</p>
<p class=\"empty-p\"> </p>
<h4>Physical Characteristics</h4>
<ul>
<li>
<p><strong>Coloration:</strong><br />Voidien are primarily dark and monotone in coloration. Markings are rare, if ever present. In recent years, lighter skin tones have begun to appear—an adaptive response intended to absorb more ambient light in an increasingly cold environment.</p>
</li>
<li>
<p><strong>Hands &amp; Feet:</strong><br />Voidien possess the <strong>largest hands</strong> of any subspecies and the <strong>smallest feet</strong>. Dew claws are present, though typically modest in size.</p>
</li>
<li>
<p><strong>Tail Structure:</strong><br />Spikes are <em>not</em> present along the entire tail, appearing only in limited sections.</p>
</li>
</ul>
<h4>Skin &amp; Environmental Response</h4>
<ul>
<li>
<p><strong>Extreme Water Sensitivity:</strong><br />Any contact with water causes <strong>immediate third-degree burns</strong>, comparable to having corrosive acid poured directly onto the skin. Even brief exposure is catastrophic.</p>
</li>
<li>
<p><strong>Surface Fibers &amp; Fur:</strong><br />Rather than being covered in irritating fibers across the entire body, Voidien only possess these fibers in select areas. The rest of their body is coated in a thin, velvet-like fur that aids in insulation and heat retention.</p>
</li>
</ul>
<h4>Cultural Standing</h4>
<p>Voidien are highly respected and often deferred to, not only because of their rarity, but because they represent survival against impossible odds. Their continued existence is seen as a symbol of endurance, tradition, and control in a universe that grows increasingly hostile.</p>
<p><strong>To encounter a Voidien is uncommon. </strong><em><strong>To be one is a burden of legacy.</strong></em></p>
<p class=\"empty-p\"> </p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle880l-8f27f572-7e6e-4a71-b492-af154231c0b3.png/v1/fit/w_375,h_832/voidien_by_hermescasp_dle880l-375w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjgzOSIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODgwbC04ZjI3ZjU3Mi03ZTZlLTRhNzEtYjQ5Mi1hZjE1NDIzMWMwYjMucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.lTW26lNpbu-bJElDJymhVx63aU0tFvQzBuaWBNPgCU0\" alt=\"Voidien\" /></div>
</figure>
</div>
<p class=\"empty-p\"> </p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span></figure>
</div>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86and-2815cc4f-e1b3-4272-bb68-06a697a0c865.png/v1/fit/w_150,h_63/feral_by_howlingcrown_dl86and-150.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjMiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZhbmQtMjgxNWNjNGYtZTFiMy00MjcyLWJiNjgtMDZhNjk3YTBjODY1LnBuZyIsIndpZHRoIjoiPD0yNTUifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Iz5e9QBi09sz9axddNIRy6nk-YdTk_6c93xKB8EYrL0\" alt=\"Feral\" width=\"195\" height=\"48\" /></div>
</figure>
</div>
<h4>Feral (LIMITED)</h4>
<p><em>Contested Subspecies</em></p>
<p class=\"empty-p\"> </p>
<p>The <strong>Feral</strong> are the second oldest and second rarest known subspecies of Voidi. Their classification has long been debated, with some factions questioning whether Ferals should be considered a true subspecies at all. Unlike other rare Voidi, Ferals are not scarce due to low population numbers—but because of their extraordinary ability to remain unseen.</p>
<p>Ferals are masters of concealment. Entire communities exist without detection for generations.</p>
<p class=\"empty-p\"> </p>
<h4>Habitat &amp; Society</h4>
<ul>
<li>
<p><strong>Homeworld Dwellers:</strong><br />Ferals inhabit the vast, hostile mountain ranges of the Voidi homeworld—regions considered nearly uninhabitable by most other subspecies.</p>
</li>
<li>
<p><strong>Tightly Knit Communities:</strong><br />Feral societies are small, insular, and deeply bonded. Loyalty to the group is absolute, and outsiders are rarely tolerated.</p>
</li>
<li>
<p><strong>Aggression &amp; Defense:</strong><br />Ferals are widely regarded as the most aggressive Voidi subspecies. This is not without cause—historically, they were hunted by the royal line for their <strong>valuable pelts and ivory</strong>, leaving deep generational scars.</p>
</li>
</ul>
<h4>Physical Characteristics</h4>
<ul>
<li>
<p><strong>Fur Coverage:</strong><br />Thick, soft fur covers many parts of the body, offering protection against extreme cold and aiding in silent movement through mountainous terrain.</p>
</li>
<li>
<p><strong>Coloration &amp; Markings:</strong><br />Markings are minimal to nearly nonexistent, often appearing only as small accent details. Overall coloration is muted and optimized for camouflage.</p>
</li>
<li>
<p><strong>Thermal Vents:</strong><br />Vent thickness varies widely between individuals. Due to this variation, vents may display <strong>multiple colors</strong>, rather than a single consistent glow.</p>
</li>
<li>
<p><strong>Dewclaws and claws:</strong><br />It is common for large dewclaws to be present on this species. All claws are usually slightly serrated to assist in climbing icy slopes.</p>
</li>
</ul>
<h4>Structural Traits</h4>
<ul>
<li>
<p><strong>Hands &amp; Fingers:</strong><br />Ferals possess the <strong>longest fingers</strong> of any Voidi subspecies, paired with generally smaller palms. This grants exceptional grip and dexterity when climbing or navigating uneven terrain.</p>
</li>
<li>
<p><strong>Body Proportions:</strong><br />The middle body section is well proportioned and notably thicker than that of Voidien, contributing to endurance and insulation.</p>
</li>
</ul>
<h4>Cultural Perception</h4>
<p>To some, Ferals are ghosts of the mountains—dangerous, unpredictable, and best left undisturbed. To others, they are survivors who endured betrayal and violence long enough to disappear entirely.</p>
<p><strong>Whether they are a subspecies by blood or by adaptation remains unresolved.</strong><strong><br /></strong><em><strong>The Ferals do not care.</strong></em></p>
<p class=\"empty-p\"> </p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle8846-37df936a-a089-496f-b227-48cf2838c659.png/v1/fit/w_414,h_814/feral_by_hermescasp_dle8846-414w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjUxNiIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0Ni0zN2RmOTM2YS1hMDg5LTQ5NmYtYjIyNy00OGNmMjgzOGM2NTkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.J5LVdGVqFgsNIxB2YmQA7SHsaILGvg1jiCB2jSAF3eM\" alt=\"Feral\" /></div>
</figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span></figure>
</div>
<p class=\"empty-p\"><img style=\"font-size: 12.8px; display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86awy-b7690789-7b66-4738-af20-d659224cf0b1.png/v1/fit/w_300,h_85/hybrid_by_howlingcrown_dl86awy-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODUiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZhd3ktYjc2OTA3ODktN2I2Ni00NzM4LWFmMjAtZDY1OTIyNGNmMGIxLnBuZyIsIndpZHRoIjoiPD0zMzAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.vD3kdVx9AQZAmgMLkqL5c8BIdi0S1bu4e0-ngrrOIQg\" alt=\"Hybrid\" width=\"242\" height=\"62\" /></p>
<h4>Hybrid</h4>
<p><em>Unrecognized Subspecies — Artificial Lineage</em></p>
<p class=\"empty-p\"> </p>
<p>Hybrids are often referred to—both reverently and derisively—as the <em>“designer”</em> Voidi. Through deliberate genetic splicing, nearly any trait can be engineered if the correct genes are combined. These Voidi are <strong>never born naturally</strong> and are always incubated off-planet under tightly controlled conditions designed to produce specific results.</p>
<p>What emerges is beauty without balance.</p>
<p class=\"empty-p\"> </p>
<h4>Creation &amp; Development</h4>
<ul>
<li>
<p><strong>Artificial Incubation:</strong><br />Hybrids are born under highly specific temperature, gravity, and chemical standards tailored to the desired outcome. Even minor deviations can result in instability.</p>
</li>
<li>
<p><strong>Designer Markings:</strong><br />Hybrids frequently display stunning, complex, and brightly colored markings—often far more vivid than any naturally occurring Voidi subspecies.</p>
</li>
</ul>
<h4>Biological Instability</h4>
<ul>
<li>
<p><strong>Ivory Overproduction:</strong><br />A common and dangerous side effect of hybridization is excessive ivory growth. This can place immense pressure on the adrenaline “hearts,” sometimes crushing them prematurely and causing early death.</p>
</li>
<li>
<p><strong>Horn &amp; Dental Growth:</strong><br />Ivory overproduction often results in unnaturally long, heavy horns and teeth. If left unchecked, these can grow to the point of <strong>piercing the eyes</strong> or causing internal damage.</p>
</li>
</ul>
<h4>Physical Characteristics</h4>
<ul>
<li>
<p><strong>Limbs &amp; Build:</strong><br />Limbs are typically thicker and heavier than average. Large feet and toes are common, though the padding on the soles is thin, resulting in poor sound dampening when walking.</p>
</li>
<li>
<p><strong>Water Resistance:</strong><br />Unlike other Voidi subspecies, Hybrids are <strong>nearly completely resistant to water</strong>, suffering little to no burning on contact.</p>
</li>
<li>
<p><strong>Vents:</strong><br />Vents are often thin, small, or poorly spaced, reducing their effectiveness.</p>
</li>
<li>
<p><strong>Spines:</strong><br />Spines may be present or absent. When present, they are frequently malformed—too short, too thin, or too small to provide meaningful protection.</p>
</li>
<li>
<p><strong>Palms &amp; Skin:</strong><br />Palms rarely glow due to thicker skin. Small but prominent patches of fur may appear across the body.</p>
</li>
<li>
<p><strong>Dew Claws:</strong><br />Dew claws are present but are the <strong>smallest of any Voidi subspecies</strong>.</p>
</li>
</ul>
<h4>Cultural Standing</h4>
<p>Among native Voidi populations, Hybrids are widely viewed as <strong>unholy</strong>, artificial, and unnatural—an affront to survival through adaptation. They are often called <em>freaks of nature</em>, living proof that some boundaries were never meant to be crossed.</p>
<p><strong>To others, they are living experiments—</strong><em><strong>beautiful, dangerous, and tragic in equal measure.</strong></em></p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle8840-0fb7b034-4ec3-49e5-b848-897f028016d9.png/v1/fit/w_375,h_657/hybrid_by_hermescasp_dle8840-375w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI0NCIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0MC0wZmI3YjAzNC00ZWMzLTQ5ZTUtYjg0OC04OTdmMDI4MDE2ZDkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ._mfNv_mLTPUlu6uwqj_yoqTH9X8RAvVaCSSXazRbh8U\" alt=\"Hybrid\" /></div>
</figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span></figure>
</div>
<div class=\"B2Wm85 DPW1hJ\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl86b6r-44805e2c-d62e-4558-bf0c-3a6d91efe6dd.png/v1/fit/w_300,h_66/voidian_by_howlingcrown_dl86b6r-300w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjYiLCJwYXRoIjoiL2YvMmFmZGEyNmEtM2UyMS00YjI4LWFkNjktMGVhYzMzZGUxYjhhL2RsODZiNnItNDQ4MDVlMmMtZDYyZS00NTU4LWJmMGMtM2E2ZDkxZWZlNmRkLnBuZyIsIndpZHRoIjoiPD0zMzUifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.THvcFfGgpB6nZbTfsOInwRqU-FhBlMoXIrmi_Qifavc\" alt=\"Voidian\" width=\"259\" height=\"51\" /></div>
</figure>
</div>
<p class=\"empty-p\"> </p>
<h4>Voidian</h4>
<p><em>Recognized Subspecies — Modern Lineage</em></p>
<p class=\"empty-p\"> </p>
<p>The <strong>Voidian</strong> are the most common Voidi subspecies and are widely regarded as the <em>new age</em> of the species. Where earlier lineages struggled to survive a dying homeworld, Voidians represent successful adaptation beyond it.</p>
<p>They are the natural evolutionary progression of the Voidien line, shaped by relocation, stability, and long-term survival on a new homeworld.</p>
<p class=\"empty-p\"> </p>
<h4>Physical Characteristics</h4>
<ul>
<li>
<p><strong>Balanced Proportions:</strong><br />Voidians possess well-filled, accurately proportioned bodies. Their limbs are strong, well-built, and suited for sustained activity.</p>
</li>
<li>
<p><strong>Thermal Vents:</strong><br />Vents are evenly spaced and consistently functional. A visible glow is present, particularly during exertion or heat regulation.</p>
</li>
<li>
<p><strong>Movement &amp; Stealth:</strong><br />Feet are heavily padded, allowing for near-silent movement across most terrain.</p>
</li>
</ul>
<h4>Structural Adaptations</h4>
<ul>
<li>
<p><strong>Defensive Ivory Spikes:</strong><br />Extra ivory spikes are present on the elbows of the primary (largest) arms. These serve as an adaptive defensive measure, capable of being brought into use when necessary.</p>
</li>
<li>
<p><strong>Stability Over Extremes:</strong><br />Unlike Hybrid or Feral subspecies, Voidians exhibit fewer extreme traits, favoring reliability and survivability over specialization.</p>
</li>
</ul>
<h4>Cultural Standing</h4>
<p>Voidians are considered the baseline of modern Voidi society. They are neither revered nor feared—only expected. Their prevalence has allowed Voidi culture to stabilize, expand, and persist beyond the limitations of their origin.</p>
<p><strong>Where Voidien are legacy,</strong><em><strong><br /></strong></em><em><strong>Voidians are continuity.</strong></em></p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle884w-bb1474a1-8e3d-4b33-8107-56dd22258169.png/v1/fit/w_375,h_671/voidian_by_hermescasp_dle884w-375w.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjI5MSIsInBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlODg0dy1iYjE0NzRhMS04ZTNkLTRiMzMtODEwNy01NmRkMjIyNTgxNjkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.sAV5b7W0xZK5l7ZaryytwNFtt__1o3c-nzGtGUmsLq8\" alt=\"Voidian\" /></div>
</figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl7wqi8-e638342f-5383-43fd-be74-31f79aa1f1cc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw3d3FpOC1lNjM4MzQyZi01MzgzLTQzZmQtYmU3NC0zMWY3OWFhMWYxY2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PkvpZKBG0Ex9pN6IplZ4vPiZdEk4yO0-n36Xev6Bx-Y\" alt=\"Divider Bottom\" /></span></figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl85r5e-650ef7fa-02a3-4259-a4dd-99da8b1f0e3a.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4NXI1ZS02NTBlZjdmYS0wMmEzLTQyNTktYTRkZC05OWRhOGIxZjBlM2EucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.WADg45K4lZBeYYBBnCxTP-BhhMDgab7lPwyOMT9Ka5Q\" alt=\"Reversed-divider-legacies\" width=\"361\" height=\"52\" /></span></figure>
</div>
<h2 style=\"text-align:center;\">Designing your character?</h2>
<p>Having a hard time drawing your character?</p>
<p>Feel free to edit one of our <a href=\"https://www.deviantart.com/stash/21eolcskctb0\">bases</a>!</p>
<p>Subspecies are still being made!</p>
<p class=\"empty-p\"> </p>
<p>Currently, we do not have traits! Our only rules is please follow the description of the subspecies you have chosen. For example, Offplanet cannot have fur because that is a feral trait. Voidian cannot have a fleshy tail because that is a hybrid trait.<br /><br />Over time, we will create traits! If your character already has that trait before its official creation, then you get to keep it for free! <br /><br />All arms do not need to be present on the reference photo, but we expect each voidi to have 6 arms by default.</p>
<p><br />When submitting your character, please dm our group with this form<br /><br /><strong>Character Image:</strong><br /><strong>Subspecies:</strong><br /><strong>Artist credit:</strong></p>', '0');

-- site_settings: 32 rows
DELETE FROM `site_settings`;
INSERT INTO `site_settings` (`key`, `value`, `description`) VALUES
('admin_user', '1', 'ID of the site\'s admin user.'),
('blacklist_key', '0', 'Optional key to view the blacklist. Enter \"0\" to not require one.'),
('blacklist_link', '0', '0: No link to the blacklist is displayed anywhere, 1: Link to the blacklist is shown on the user list.'),
('blacklist_privacy', '0', 'Who can view the blacklist? 0: Admin only, 1: Staff only, 2: Members only, 3: Public.'),
('contracts_how_it_works', '<div class=\"B2Wm85\"> </div>
<blockquote>
<h2 style=\"text-align:center;\"><a href=\"https://www.deviantart.com/hermescasp/journal/CURRENT-GALAXY-ALPHA-1-1293651591\">Current Galaxy - ALPHA 1</a></h2>
</blockquote>
<hr />
<h2><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></h2>
<h2>Expeditions</h2>
<p><strong>Expeditions</strong> allow your character to travel to distant worlds in search of unique materials used for crafting and progression. To see what qualifies as an expedition, view the document linked <u><em><strong>here.</strong></em></u></p>
<p>As you explore, you may uncover new:</p>
<ul>
<li>
<p>Planet types</p>
</li>
<li>
<p>Environmental traits</p>
</li>
<li>
<p>Biological traits</p>
</li>
<li>
<p>Atmospheric traits</p>
</li>
<li>
<p>Astronomical traits</p>
</li>
<li>
<p>Weather traits</p>
</li>
<li>
<p>Anomalous traits</p>
</li>
</ul>
<p>Each planet contains its own set of discoverable materials and features. These are not revealed all at once—<strong>multiple visits are required</strong> to fully document a world. The rarer the planet, the more expeditions it will take to uncover everything it has to offer.</p>
<p>Once a planet has been fully explored, it will be:</p>
<ul>
<li>
<p>Marked as <strong>discovered by you</strong></p>
</li>
<li>
<p>Added to your personal list of discovered planets</p>
</li>
<li>
<p>Eligible to be <strong>named by the discovering player</strong></p>
</li>
</ul>
<hr />
<div class=\"B2Wm85 DPW1hJ\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></div>
<h2>Galaxies &amp; Progression</h2>
<p>Planets are grouped into <strong>galaxies</strong>, each containing <strong>3–8 planets</strong>.<br />A galaxy is considered fully unlocked once all of its planets have been discovered by the playerbase.</p>
<p>When this occurs, the community may move on to a <strong>new galaxy</strong>. Previous galaxies become inaccessible unless they are selected during the next <strong>monthly galaxy vote</strong>.</p>
<p><strong>Important:</strong><br />If <em>you</em> discovered a planet, you may visit it <strong>at any time</strong>, regardless of which galaxy the playerbase is currently exploring.</p>
<div class=\"B2Wm85 yeazx5\"><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></div>
<hr />
<h2>Monthly Galaxy Rotation</h2>
<ul>
<li>
<p>Galaxies rotate <strong>once per month</strong>, provided at least one additional galaxy has been unlocked.</p>
</li>
<li>
<p>Each planet requires a <strong>minimum of 5 visits</strong> to fully unlock.</p>
</li>
<li>
<p>Rarer planets require more visits.</p>
</li>
<li>
<p>Players with <strong>higher faction ranks</strong> require fewer visits to complete planetary discovery.</p>
</li>
</ul>
<h2><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /><br />Planet Naming Rules</h2>
<p>Planet names must:</p>
<ul>
<li>
<p>Be respectful</p>
</li>
<li>
<p>Be creative</p>
</li>
<li>
<p>Avoid references to modern meme culture</p>
</li>
<li>
<p>Be appropriate</p>
</li>
</ul>
<p>(This helps preserve immersion—and saves staff from unnecessary headaches.)</p>
<p><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>', 'Explanation text shown on the contracts page about how the contract system works'),
('default_theme', '0', 'ID of the default theme users should see. 0: Disabled, shows default lorekeeper. This setting is overwritten by the users theme setting.'),
('design_votes_needed', '3', 'Number of approval votes needed for a design update or MYO submission to be considered as having approval.'),
('gallery_submissions_open', '1', '0: Gallery submissions closed, 1: Gallery submissions open.'),
('gallery_submissions_require_approval', '1', '0: Gallery submissions do not require approval, 1: Gallery submissions require approval.'),
('gallery_submissions_reward_currency', '0', '0: Gallery submissions do not reward currency, 1: Gallery submissions reward currency.'),
('group_currency', '1', 'ID of the group currency to award from gallery submissions (if enabled).'),
('is_claims_open', '1', '0: New claims cannot be made (mods can work on the queue still), 1: Claims are submittable.'),
('is_design_updates_open', '1', '0: Characters cannot be submitted for design update approval, 1: Characters can be submitted for design update approval.'),
('is_myos_open', '1', '0: MYO slots cannot be submitted for design approval, 1: MYO slots can be submitted for approval.'),
('is_prompts_open', '1', '0: New prompt submissions cannot be made (mods can work on the queue still), 1: Prompts are submittable.'),
('is_registration_open', '1', '0: Registration closed, 1: Registration open. When registration is closed, invitation keys can still be used to register.'),
('is_reports_open', '1', '0: New reports cannot be made (mods can work on the queue still), 1: Reports are submittable.'),
('open_transfers_queue', '0', '0: Character transfers do not need mod approval, 1: Transfers must be approved by a mod.'),
('trade_listing_duration', '14', 'Number of days a trade listing is displayed for.'),
('transfer_cooldown', '0', 'Number of days to add to the cooldown timer when a character is transferred.'),
('world_info_1_description', '<p><strong>Contracts</strong> are short, simple “go and fetch” style objectives that last for <strong>one month</strong>.</p>
<ul>
<li>
<p>At the <strong>beginning of each month</strong>, <strong>3 new contracts</strong> are released.</p>
</li>
<li>
<p>You can complete them <strong>at any time during that month</strong>.</p>
</li>
<li>
<p>Completing a contract lets you <strong>claim that month’s rewards</strong>.</p>
</li>
<li>
<p> </p>
</li>
</ul>
<p>Think of them as optional monthly mini-missions with straightforward goals.</p>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>⚙️ How They’re Designed</h2>
<h3>1️⃣ No Staff Involvement Needed</h3>
<p>Contracts are meant to be <strong>self-contained and automated</strong>.</p>
<ul>
<li>
<p>No manual approvals.</p>
</li>
<li>
<p>No staff “rolling” outcomes.</p>
</li>
<li>
<p>No special intervention required.</p>
</li>
</ul>
<p>This means everything needed to complete them should already exist within the system.</p>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h3>2️⃣ No Resource Materials</h3>
<p>Because contracts are designed to run without staff support:</p>
<ul>
<li>
<p>You <strong>cannot request extra resource materials</strong> specifically for contracts.</p>
</li>
<li>
<p>You must use only what is already available in-game/system.</p>
</li>
</ul>
<p>They’re meant to be achievable using normal gameplay.</p>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h3>3️⃣ Planet Discovery Update</h3>
<p>If a contract involves finding or interacting with a <strong>planet</strong>:</p>
<ul>
<li>
<p>Once that planet is discovered,</p>
</li>
<li>
<p>Its <strong>location name will be added directly to the contract</strong>.</p>
</li>
</ul>
<p>This makes it easier to:</p>
<ul>
<li>
<p>Search for the planet</p>
</li>
<li>
<p>Reference it later</p>
</li>
<li>
<p>Avoid confusion about where to go</p>
</li>
</ul>
<p>So contracts may start slightly vague, but become clearer once discoveries are made.</p>
<p><img style=\"margin-left:auto;margin-right:auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2>🧭 In Simple Terms</h2>
<p>Every month:</p>
<ul>
<li>
<p>3 new mini-missions appear.</p>
</li>
<li>
<p>They’re simple, self-serve tasks.</p>
</li>
<li>
<p>Complete them anytime during the month.</p>
</li>
<li>
<p>Earn rewards.</p>
</li>
<li>
<p>No special assistance or bonus materials required.</p>
</li>
<li>
<p>Discovered locations get added to improve clarity.</p>
</li>
</ul>', 'World info section 1 description'),
('world_info_1_image', '', 'World info section 1 image'),
('world_info_1_title', 'How do Contracts work?', 'World info section 1 title'),
('world_info_2_description', '', 'World info section 2 description'),
('world_info_2_image', '', 'World info section 2 image'),
('world_info_2_title', 'How do Expeditions work?', 'World info section 2 title'),
('world_info_3_description', '', 'World info section 3 description'),
('world_info_3_image', '', 'World info section 3 image'),
('world_info_3_title', 'How do Featured Planets work?', 'World info section 3 title'),
('world_info_4_description', '', 'World info section 4 description'),
('world_info_4_image', '', 'World info section 4 image'),
('world_info_4_title', 'How do Current Galaxies work?', 'World info section 4 title');

-- site_extensions: 9 rows
DELETE FROM `site_extensions`;
INSERT INTO `site_extensions` (`key`, `wiki_key`, `creators`, `version`) VALUES
('admin_notification', 'Admin_Notification', '{\"Uri\":\"https:\\/\\/github.com\\/preimpression\\/\"}', '2.0.0'),
('awards', 'Awards', '{\"Uri\":\"https:\\/\\/github.com\\/preimpression\\/\",\"TGI\":\"https:\\/\\/github.com\\/tjgallaha\\/\",\"Ne-wt\":\"https:\\/\\/github.com\\/ne-wt\\/\"}', '2.0.0'),
('dailies', 'Dailies', '{\"Cylunny\":\"https:\\/\\/toyhou.se\\/cylunny\"}', '1.1.0'),
('forums', 'Forums', '{\"Uri\":\"https:\\/\\/github.com\\/preimpression\\/\"}', '1.0.0'),
('safety_deposit_box', 'Safety_Deposit_Box', '{\"Uri\":\"https:\\/\\/github.com\\/preimpression\\/\"}', '1.0.0'),
('submission_drafts', 'Submission_Drafts', '{\"Uri\":\"https:\\/\\/github.com\\/preimpression\\/\"}', '2.0.0'),
('theme_manager', 'Theme Manager', '{\"Uri\":\"https:\\/\\/github.com\\/preimpression\\/\",\"Cylunny\":\"https:\\/\\/toyhou.se\\/cylunny\",\"moif\":\"https:\\/\\/toyhou.se\\/moif\"}', '2.0.0'),
('Trade_Listings', 'Trade_Listings', '{\"Mercury\":\"https:\\/\\/github.com\\/itinerare\\/\"}', '1.0.1'),
('world_expansion', 'World_Expansion', '{\"Uri\":\"https:\\/\\/github.com\\/preimpression\\/\",\"Mercury\":\"https:\\/\\/github.com\\/itinerare\\/\"}', '1.3.2');

-- specieses: 1 rows
DELETE FROM `specieses`;
INSERT INTO `specieses` (`id`, `name`, `has_image`, `sort`, `description`, `parsed_description`, `masterlist_sub_id`) VALUES
('1', 'Voidi', '0', '0', NULL, NULL, '0');

-- subtypes: 5 rows
DELETE FROM `subtypes`;
INSERT INTO `subtypes` (`id`, `species_id`, `name`, `has_image`, `sort`, `description`, `parsed_description`) VALUES
('1', '1', 'Voidian', '0', '0', NULL, NULL),
('2', '1', 'Voidien', '0', '0', NULL, NULL),
('3', '1', 'Feral', '0', '0', NULL, NULL),
('4', '1', 'Hybrid', '0', '0', NULL, NULL),
('5', '1', 'Offplanet', '0', '0', NULL, NULL);

-- rarities: 5 rows
DELETE FROM `rarities`;
INSERT INTO `rarities` (`id`, `name`, `sort`, `color`, `has_image`, `description`, `parsed_description`) VALUES
('1', 'Rare', '2', '020202', '0', 'The rarest feature', 'The rarest feature'),
('2', 'Legendary', '4', '575757', '0', 'The hardest to achieve rarity', 'The hardest to achieve rarity'),
('3', 'Uncommon', '1', '888888', '0', 'The uncommon trait', 'The uncommon trait'),
('4', 'Mutation', '3', 'C0C0C0', '0', 'Rarely occurring naturally', 'Rarely occurring naturally'),
('5', 'Common', '0', 'E5E5E5', '0', 'The most common', 'The most common');

-- item_categories: 4 rows
DELETE FROM `item_categories`;
INSERT INTO `item_categories` (`id`, `name`, `sort`, `description`, `parsed_description`, `has_image`, `is_character_owned`, `character_limit`, `can_name`) VALUES
('1', 'Titles', '0', '<p>Unique titles for completing certain events, random, low chance.&nbsp;</p>', '<p>Unique titles for completing certain events, random, low chance. </p>', '0', '1', '0', '0'),
('2', 'Basic Materials', '0', '<p>Basic Materials&nbsp;</p>', '<p>Basic Materials </p>', '0', '1', '0', '0'),
('3', 'Traits', '0', '<p>Traits that are rolled randomly and can be applied to your character</p>', '<p>Traits that are rolled randomly and can be applied to your character</p>', '0', '0', '0', '0'),
('4', 'Craftable item', '0', NULL, NULL, '0', '0', '0', '0');

-- items: 23 rows
DELETE FROM `items`;
INSERT INTO `items` (`id`, `item_category_id`, `name`, `has_image`, `description`, `parsed_description`, `allow_transfer`, `can_only_roll_once`, `data`, `reference_url`, `artist_alias`, `artist_url`, `artist_id`, `is_released`) VALUES
('1', '1', 'The Resonance', '0', '<p>Small chance to be earned via participating in the games release event;</p>
<h1 class=\"ZnIHVV\">The Resonance Brace</h1>
<p>&nbsp;</p>
<p>Can only be rolled once.&nbsp;</p>', '<p>Small chance to be earned via participating in the games release event;</p>
<h1 class=\"ZnIHVV\">The Resonance Brace</h1>
<p> </p>
<p>Can only be rolled once. </p>', '0', '1', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('2', '2', 'Salvaged Metal', '0', '<p>Metal collected from shipwrecks and other ruins</p>', '<p>Metal collected from shipwrecks and other ruins</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('3', '3', 'Resonance Touched', '0', '<p>A legendary trait set for completing all 4 weeks of the release event</p>', '<p>A legendary trait set for completing all 4 weeks of the release event</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('4', '2', 'Treated Wood', '0', '<p>Harvested from resilient native growth adapted to wind and dust exposure.</p>', '<p>Harvested from resilient native growth adapted to wind and dust exposure.</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('5', '2', 'Leather', '0', '<p>Obtained from abundant fauna, often used for early-stage crafting.</p>', '<p>Obtained from abundant fauna, often used for early-stage crafting.</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('6', '2', 'Bone Fragments', '0', '<p>Commonly found near migration routes and natural caverns.</p>', '<p>Commonly found near migration routes and natural caverns.</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('7', '2', 'Resin', '0', '<p>Secreted by hardy plant life as protection against storms and arid conditions.</p>', '<p>Secreted by hardy plant life as protection against storms and arid conditions.</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('8', '2', 'Shinevine', '0', '<p>A faintly luminescent, fast-growing alien plant commonly found along cave entrances and sheltered lowlands.</p>', '<p>A faintly luminescent, fast-growing alien plant commonly found along cave entrances and sheltered lowlands.</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('9', '2', 'Rope', '0', '<p>Loose fibers twirled together into a rope</p>', '<p>Loose fibers twirled together into a rope</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('10', '2', 'Spore Dust', '0', '<p>Dust from a multitude of planets and plants, not enjoyable for the nose, especially if you have allergies&nbsp;</p>', '<p>Dust from a multitude of planets and plants, not enjoyable for the nose, especially if you have allergies </p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('11', '2', 'Electronics', '0', '<p>Various electronic components&nbsp;</p>', '<p>Various electronic components </p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('12', '2', 'Unknown Element', '0', '<p>A very strange element, unable to be identified by modern-day science</p>', '<p>A very strange element, unable to be identified by modern-day science</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('13', '2', 'Soldered Stardust', '0', '<p>Stardust condensed into a hardy metal, used for items or ships often in space. Able to withstand extreme heat and radiation.&nbsp;</p>', '<p>Stardust condensed into a hardy metal, used for items or ships often in space. Able to withstand extreme heat and radiation. </p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('14', '2', 'Flass Shard', '0', '<p>A strangely delicate type of glass, almost sweet in taste like sugar-glass, but not as fun to eat. Can be reinforced with a small amount of Soldered Stardust to be used in everyday items like holopads.</p>', '<p>A strangely delicate type of glass, almost sweet in taste like sugar-glass, but not as fun to eat. Can be reinforced with a small amount of Soldered Stardust to be used in everyday items like holopads.</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('15', '2', 'Mosaic Geodes', '0', '<p>Common naturally occurring geodes, the outside is pale white and smooth, while the inside is a mess of beautiful colors</p>', '<p>Common naturally occurring geodes, the outside is pale white and smooth, while the inside is a mess of beautiful colors</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('16', '2', 'False Stars', '0', '<p>A large jar of dead parasitic creatures in the shape of stars, extremely valuable&nbsp;</p>', '<p>A large jar of dead parasitic creatures in the shape of stars, extremely valuable </p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('17', '2', 'Diasmond cloud', '0', '<p>A thin, sparkly haze thats extremely dangerous to inhale or be inside due to it\'s sharp particles.</p>', '<p>A thin, sparkly haze thats extremely dangerous to inhale or be inside due to it\'s sharp particles.</p>', '1', '0', '{\"rarity\":null,\"uses\":null,\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('18', '4', 'Survey Beacon', '0', '<p><strong>Effect:</strong><br />+25% chance to find <strong>one chosen resource</strong> on expeditions</p>', '<p><strong>Effect:</strong><br />+25% chance to find <strong>one chosen resource</strong> on expeditions</p>', '1', '0', '{\"rarity\":null,\"uses\":\"3\",\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('19', '4', 'Planetary Scanner Uplink', '0', '<p><strong>Effect:</strong><br />+1 visit added per visit to a planet&nbsp;<br /><em>ex. If you visit once, it counts as twice when this item is active</em></p>', '<p><strong>Effect:</strong><br />+1 visit added per visit to a planet <br /><em>ex. If you visit once, it counts as twice when this item is active</em></p>', '1', '0', '{\"rarity\":null,\"uses\":\"3\",\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('20', '4', 'Spore-Sealed Pathfinder Cloak', '0', '<p><strong>Effect:</strong><br />Negates one planetary hazard or penalty during an expedition. <em>Some hazards may hide resources that can be found on that planet. </em></p>', '<p><strong>Effect:</strong><br />Negates one planetary hazard or penalty during an expedition. <em>Some hazards may hide resources that can be found on that planet. </em></p>', '1', '0', '{\"rarity\":null,\"uses\":\"2\",\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('21', '4', 'Modular Salvage Kit', '0', '<p><strong>Effect:</strong><br />Gain +1 extra <strong>Salvaged Metal</strong> whenever it is obtained</p>
<p><strong>Passive:</strong> Always active while owned</p>', '<p><strong>Effect:</strong><br />Gain +1 extra <strong>Salvaged Metal</strong> whenever it is obtained</p>
<p><strong>Passive:</strong> Always active while owned</p>', '1', '0', '{\"rarity\":null,\"uses\":\"7\",\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('22', '4', 'Shinevine Catalyst', '0', '<p><strong>Effect:</strong><br />Reduce the material cost of your <strong>next crafted item by 1</strong><br />(Minimum cost of 2)<br /><em>ex. If an item costs 3x shinevine and 2x soldered stardust, use this item to remove the need to spend soldered stardust to craft the item</em></p>
<p><strong>Uses:</strong> 1</p>', '<p><strong>Effect:</strong><br />Reduce the material cost of your <strong>next crafted item by 1</strong><br />(Minimum cost of 2)<br /><em>ex. If an item costs 3x shinevine and 2x soldered stardust, use this item to remove the need to spend soldered stardust to craft the item</em></p>
<p><strong>Uses:</strong> 1</p>', '1', '0', '{\"rarity\":null,\"uses\":\"1\",\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1'),
('23', '4', 'Emergency Fabricator Charge', '0', '<p>Reroll one expedition reward<br /><em>(The second result must be accepted</em></p>', '<p>Reroll one expedition reward<br /><em>(The second result must be accepted</em></p>', '1', '0', '{\"rarity\":null,\"uses\":\"1\",\"release\":null,\"prompts\":null,\"resell\":null}', NULL, NULL, NULL, NULL, '1');

-- currencies: 2 rows
DELETE FROM `currencies`;
INSERT INTO `currencies` (`id`, `is_user_owned`, `is_character_owned`, `name`, `abbreviation`, `sort_user`, `sort_character`, `is_displayed`, `allow_user_to_user`, `allow_user_to_character`, `allow_character_to_user`, `has_icon`, `has_image`, `description`, `parsed_description`) VALUES
('1', '0', '1', 'Reputation', 'REP', '0', '0', '0', '0', '0', '0', '0', '0', '<p>Reputation is essentially experience for your character</p>', '<p>Reputation is essentially experience for your character</p>'),
('2', '1', '0', 'Credit', 'CRED', '0', '0', '1', '1', '0', '0', '0', '0', '<p>Credits are the primairy currency of the game&nbsp;</p>', '<p>Credits are the primairy currency of the game </p>');

-- feature_categories: 1 rows
DELETE FROM `feature_categories`;
INSERT INTO `feature_categories` (`id`, `name`, `has_image`, `sort`, `description`, `parsed_description`) VALUES
('1', 'Offplanet specific traits', '0', '0', 'Traits that are normal for a offplanet sybtype', 'Traits that are normal for a offplanet sybtype');

-- features: 11 rows
DELETE FROM `features`;
INSERT INTO `features` (`id`, `feature_category_id`, `species_id`, `rarity_id`, `name`, `has_image`, `description`, `parsed_description`, `subtype_id`) VALUES
('1', '1', NULL, '4', 'Irregular Vent Placement', '0', 'The act of vents being placed irregularly, instead of being sorted around the body evenly.', 'The act of vents being placed irregularly, instead of being sorted around the body evenly.', NULL),
('2', '1', NULL, '1', 'Dew claw present', '0', 'Dew claw being present when it usually is not', 'Dew claw being present when it usually is not', NULL),
('3', '1', NULL, '1', 'Lack of markings', '0', 'Lack of markings when a subspecies usually has them', 'Lack of markings when a subspecies usually has them', NULL),
('4', '1', NULL, '4', 'Hybrid tail', '0', 'A fleshy, unique tail on a subspecies that doesnt usually have it', 'A fleshy, unique tail on a subspecies that doesnt usually have it', NULL),
('5', NULL, NULL, '5', 'Whiskers', '0', 'Whiskers from the face, wrists and ankles', 'Whiskers from the face, wrists and ankles', NULL),
('6', NULL, NULL, '3', 'Shaped pupils', '0', 'Pupils in unusual shapes', 'Pupils in unusual shapes', NULL),
('7', NULL, NULL, '1', 'Glowing Features', '0', 'Features that glow unusually such as the eyes', 'Features that glow unusually such as the eyes', NULL),
('8', NULL, NULL, '4', 'Altered proportions', '0', 'Unique porportions such as unusually long tails, long necks, etc', 'Unique porportions such as unusually long tails, long necks, etc', NULL),
('9', NULL, NULL, '2', 'Carved vents', '0', 'Vents that are carved very shortly after birth, usually unique shapes. Done in the event ents do not form naturally', 'Vents that are carved very shortly after birth, usually unique shapes. Done in the event ents do not form naturally', NULL),
('10', NULL, NULL, '2', 'Snow-whiting', '0', 'The act of an adrenaline heart bursting and consuming the color holding protein within a small portion of the body, leaving it pale or white. Similar to vitiligo.', 'The act of an adrenaline heart bursting and consuming the color holding protein within a small portion of the body, leaving it pale or white. Similar to vitiligo.', NULL),
('11', NULL, NULL, '5', 'Common Horns', '0', '<p>Horns that are long, common length&nbsp;</p>', '<p>Horns that are long, common length </p>', NULL);

-- character_categories: 1 rows
DELETE FROM `character_categories`;
INSERT INTO `character_categories` (`id`, `code`, `name`, `has_image`, `sort`, `description`, `parsed_description`, `masterlist_sub_id`) VALUES
('1', 'PC', 'Player Character', '0', '0', 'Characters owned and played by players', 'Characters owned and played by players', '0');

-- loot_tables: 2 rows
DELETE FROM `loot_tables`;
INSERT INTO `loot_tables` (`id`, `name`, `display_name`) VALUES
('1', 'ASTRYX Loot Table', 'ASTRYX Loot Table'),
('2', 'The Resonance Brace loot table', 'The Resonance Brace loot table');

-- loots: 11 rows
DELETE FROM `loots`;
INSERT INTO `loots` (`loot_table_id`, `rewardable_type`, `rewardable_id`, `quantity`, `weight`, `data`) VALUES
('1', 'Item', '6', '1', '1', NULL),
('1', 'Item', '5', '1', '1', NULL),
('1', 'Item', '7', '1', '1', NULL),
('1', 'Item', '8', '1', '1', NULL),
('1', 'Item', '4', '1', '1', NULL),
('1', 'Currency', '2', '15', '1', NULL),
('2', 'Item', '11', '1', '1', NULL),
('2', 'Item', '16', '1', '1', NULL),
('2', 'Item', '2', '1', '1', NULL),
('2', 'Item', '12', '1', '1', NULL),
('2', 'Item', '1', '1', '1', NULL);

-- prompt_categories: 4 rows
DELETE FROM `prompt_categories`;
INSERT INTO `prompt_categories` (`id`, `name`, `description`, `parsed_description`, `sort`, `has_image`) VALUES
('1', 'Main Mission', NULL, NULL, '0', '0'),
('2', 'Expeditions', NULL, NULL, '0', '0'),
('3', 'Contracts', NULL, NULL, '0', '0'),
('4', 'Faction Missions', NULL, NULL, '0', '0');

-- galleries: 5 rows
DELETE FROM `galleries`;
INSERT INTO `galleries` (`id`, `parent_id`, `name`, `description`, `currency_enabled`, `votes_required`, `submissions_open`, `sort`, `start_at`, `end_at`, `hide_before_start`, `prompt_selection`, `location_selection`) VALUES
('1', NULL, 'Main Mission', NULL, '0', '0', '0', '1', NULL, NULL, '0', '0', '0'),
('2', NULL, 'Expeditions', NULL, '0', '0', '0', '2', NULL, NULL, '0', '0', '0'),
('3', NULL, 'Contracts', NULL, '0', '0', '0', NULL, NULL, NULL, '0', '0', '0'),
('4', NULL, 'Faction missions', NULL, '0', '0', '0', NULL, NULL, NULL, '0', '0', '0'),
('5', NULL, 'Other', 'Enter any works here if they do not fit into other folders', '0', '0', '1', NULL, NULL, NULL, '0', '0', '0');

-- award_categories: 1 rows
DELETE FROM `award_categories`;
INSERT INTO `award_categories` (`id`, `name`, `description`, `parsed_description`, `sort`, `has_image`) VALUES
('1', 'Event Badges', 'Badges earned via completing an event', 'Badges earned via completing an event', '0', '0');

-- awards: 1 rows
DELETE FROM `awards`;
INSERT INTO `awards` (`id`, `award_category_id`, `name`, `description`, `parsed_description`, `has_image`, `extension`, `data`, `is_user_owned`, `is_character_owned`, `is_featured`, `user_limit`, `character_limit`, `is_released`, `allow_transfer`, `allow_reclaim`) VALUES
('1', '1', 'The resonance brace', 'Earned via completing The resonance brace event', 'Earned via completing The resonance brace event', '0', 'png', '{\"rarity\":null,\"release\":null,\"prompts\":null,\"credits\":[{\"name\":\"Howlingcrown\",\"url\":\"https:\\/\\/www.deviantart.com\\/howlingcrown\",\"id\":0,\"role\":\"Co-owner\"}]}', '1', '0', '0', '0', '0', '1', '0', '0');

-- recipes: 6 rows
DELETE FROM `recipes`;
INSERT INTO `recipes` (`id`, `name`, `has_image`, `needs_unlocking`, `description`, `parsed_description`, `reference_url`, `artist_alias`, `artist_url`, `output`, `is_limited`) VALUES
('1', 'Survey Beacon', '0', '0', '<p><strong>Effect:</strong><br />+25% chance to find <strong>one chosen resource</strong> on expeditions</p>', '<p><strong>Effect:</strong><br />+25% chance to find <strong>one chosen resource</strong> on expeditions</p>', NULL, NULL, NULL, '{\"items\":{\"18\":\"1\"}}', '1'),
('2', 'Planetary Scanner Uplink', '0', '0', '<p><strong>Effect:</strong><br />+1 visit added per visit to a planet&nbsp;<br /><em>ex. If you visit once, it counts as twice when this item is active&nbsp;</em></p>
<p><strong>Duration:</strong>&nbsp;3 uses</p>', '<p><strong>Effect:</strong><br />+1 visit added per visit to a planet <br /><em>ex. If you visit once, it counts as twice when this item is active </em></p>
<p><strong>Duration:</strong> 3 uses</p>', NULL, NULL, NULL, '{\"items\":{\"19\":\"1\"}}', '1'),
('3', 'Spore-Sealed Pathfinder Cloak', '0', '0', '<p><strong>Effect:</strong><br />Negates one planetary hazard or penalty during an expedition.&nbsp;<em>Some hazards may hide resources that can be found on that planet.</em></p>
<p><strong>Uses:</strong> 3</p>', '<p><strong>Effect:</strong><br />Negates one planetary hazard or penalty during an expedition. <em>Some hazards may hide resources that can be found on that planet.</em></p>
<p><strong>Uses:</strong> 3</p>', NULL, NULL, NULL, '{\"items\":{\"20\":\"1\"}}', '1'),
('4', 'Modular Salvage Kit', '0', '0', '<p>Gain +1 extra <strong>Salvaged Metal</strong> whenever it is obtained</p>', '<p>Gain +1 extra <strong>Salvaged Metal</strong> whenever it is obtained</p>', NULL, NULL, NULL, '{\"items\":{\"21\":\"1\"}}', '1'),
('5', 'Shinevine Catalyst', '0', '0', '<p>Reduce the material cost of your <strong>next crafted item by 1</strong><br />(Minimum cost of 2)</p>', '<p>Reduce the material cost of your <strong>next crafted item by 1</strong><br />(Minimum cost of 2)</p>', NULL, NULL, NULL, '{\"items\":{\"22\":\"1\"}}', '1'),
('6', 'Emergency Fabricator Charge', '0', '0', '<p>Reroll one expedition reward<br /><br />Uses: 1</p>', '<p>Reroll one expedition reward<br /><br />Uses: 1</p>', NULL, NULL, NULL, '{\"items\":{\"23\":\"1\"}}', '1');

-- recipe_ingredients: 22 rows
DELETE FROM `recipe_ingredients`;
INSERT INTO `recipe_ingredients` (`recipe_id`, `ingredient_type`, `ingredient_data`, `quantity`) VALUES
('1', 'Item', '[\"2\"]', '1'),
('1', 'Item', '[\"11\"]', '2'),
('1', 'Item', '[\"13\"]', '1'),
('1', 'Currency', '[\"2\"]', '25'),
('2', 'Item', '[\"11\"]', '2'),
('2', 'Item', '[\"12\"]', '1'),
('2', 'Item', '[\"16\"]', '1'),
('2', 'Currency', '[\"2\"]', '30'),
('3', 'Item', '[\"10\"]', '1'),
('3', 'Item', '[\"4\"]', '1'),
('3', 'Item', '[\"5\"]', '1'),
('3', 'Item', '[\"7\"]', '1'),
('4', 'Item', '[\"2\"]', '3'),
('4', 'Item', '[\"9\"]', '1'),
('4', 'Item', '[\"4\"]', '1'),
('4', 'Currency', '[\"2\"]', '100'),
('5', 'Item', '[\"8\"]', '3'),
('5', 'Item', '[\"7\"]', '1'),
('5', 'Item', '[\"10\"]', '1'),
('6', 'Item', '[\"13\"]', '3'),
('6', 'Item', '[\"2\"]', '2'),
('6', 'Item', '[\"7\"]', '1');

-- daily_rewards: 7 rows
DELETE FROM `daily_rewards`;
INSERT INTO `daily_rewards` (`daily_id`, `rewardable_type`, `rewardable_id`, `quantity`, `step`) VALUES
('1', 'Currency', '2', '5', '1'),
('1', 'Currency', '2', '10', '2'),
('1', 'Currency', '2', '15', '3'),
('1', 'Currency', '2', '20', '4'),
('1', 'Currency', '2', '25', '5'),
('1', 'Currency', '2', '30', '6'),
('1', 'Currency', '2', '35', '7');

-- news: 1 rows
DELETE FROM `news`;
INSERT INTO `news` (`id`, `user_id`, `title`, `text`, `parsed_text`, `is_visible`, `created_at`, `updated_at`, `post_at`) VALUES
('2', '1', 'News Post 2/01', '<h2><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phw-c6ef503a-4d38-4b67-ae73-3b03a70c1898.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3Body1jNmVmNTAzYS00ZDM4LTRiNjctYWU3My0zYjAzYTcwYzE4OTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9ThO69EByuqbK5rnZxGVS2xph6wXcDyM3_VnYrTbhbg\" alt=\"Dreadfarer-blue-da\" /></h2>
<h2>🛰️ Dreadfarer &mdash; Official News Post 2/01</h2>
<p>Hello, travelers!</p>
<p>This is the <strong>first ever official news post for Dreadfarer</strong> ✨<br />Going forward, news posts will be shared <strong>monthly</strong>, typically alongside each month&rsquo;s event or \'<strong>Main Mission\'</strong>. These posts will cover group updates, new content, changes, and anything important the playerbase should know.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></p>
<h3>🌌 A Small Beginning</h3>
<p>To start off &mdash; <strong>Dreadfarer is officially open</strong>.</p>
<p>This group was originally created as a passion project for myself, my partner, and a few friends who expressed interest. While I don&rsquo;t expect it to become large, it <em>is</em> something I care deeply about and intend to nurture long-term. Dreadfarer is a slow-burn, lore-heavy sci-fi ARPG built with intention, and I&rsquo;m fully committed to seeing it grow into what it&rsquo;s meant to be.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></p>
<h3>🛠️ Current Progress &amp; Works in Progress</h3>
<p>You may notice that some sections are still incomplete or marked as WIP. Since the group has only just opened &mdash; and both admins have had a very busy month &mdash; progress slowed more than expected. That said, we&rsquo;re actively catching up and focusing on making sure <strong>all vital information is clear, accessible, and easy to navigate</strong>.</p>
<p>Our current main works in progress include:</p>
<ul>
<li>
<p>🌐 <strong>A dedicated website</strong> to better organize lore, mechanics, and resources</p>
</li>
<li>
<p>🎨 <strong>Finalizing resource icons</strong> for gameplay use</p>
</li>
<li>
<p>🪐 <strong>Revising the Voidi &amp; Home Planet sections</strong> to better support their lore and mechanical importance</p>
</li>
</ul>
<p>These sections <em>will</em> be expanded and refined over time &mdash; nothing here is abandoned, just still growing.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></p>
<h3>🚀 Our First Event</h3>
<p>We&rsquo;re also happy to share that <strong>our first official event is live</strong> and can be found here: <a href=\"https://www.deviantart.com/hermescasp/journal/The-Resonance-Brace-Open-1293657185\" rel=\"noopener noreferrer nofollow ugc\">The Resonance Brace.</a></p>
<p>Participation is completely optional &mdash; there&rsquo;s no pressure at all &mdash; but the event does offer <strong>unique, limited-time rewards</strong> for those who choose to take part. If you enjoy lore, exploration, or just dipping your toes into the setting, it&rsquo;s a great place to start.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></p>
<h3>💬 Questions &amp; Closing Thoughts</h3>
<p>If you have any questions, need clarification, or just want to chat about the setting, feel free to leave a comment below. I&rsquo;ll do my best to respond as soon as possible.</p>
<p>Thank you for taking interest in this small passion project. Whether you&rsquo;re here to play, read, or simply observe from afar &mdash; we hope Dreadfarer offers you something fun, intriguing, and worth your time.</p>
<p>Safe travels,<br />&mdash;and welcome to Dreadfarer.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></p>', '<h2><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phw-c6ef503a-4d38-4b67-ae73-3b03a70c1898.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3Body1jNmVmNTAzYS00ZDM4LTRiNjctYWU3My0zYjAzYTcwYzE4OTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9ThO69EByuqbK5rnZxGVS2xph6wXcDyM3_VnYrTbhbg\" alt=\"Dreadfarer-blue-da\" /></h2>
<h2>🛰️ Dreadfarer — Official News Post 2/01</h2>
<p>Hello, travelers!</p>
<p>This is the <strong>first ever official news post for Dreadfarer</strong> ✨<br />Going forward, news posts will be shared <strong>monthly</strong>, typically alongside each month’s event or \'<strong>Main Mission\'</strong>. These posts will cover group updates, new content, changes, and anything important the playerbase should know.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></p>
<h3>🌌 A Small Beginning</h3>
<p>To start off — <strong>Dreadfarer is officially open</strong>.</p>
<p>This group was originally created as a passion project for myself, my partner, and a few friends who expressed interest. While I don’t expect it to become large, it <em>is</em> something I care deeply about and intend to nurture long-term. Dreadfarer is a slow-burn, lore-heavy sci-fi ARPG built with intention, and I’m fully committed to seeing it grow into what it’s meant to be.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></p>
<h3>🛠️ Current Progress &amp; Works in Progress</h3>
<p>You may notice that some sections are still incomplete or marked as WIP. Since the group has only just opened — and both admins have had a very busy month — progress slowed more than expected. That said, we’re actively catching up and focusing on making sure <strong>all vital information is clear, accessible, and easy to navigate</strong>.</p>
<p>Our current main works in progress include:</p>
<ul>
<li>
<p>🌐 <strong>A dedicated website</strong> to better organize lore, mechanics, and resources</p>
</li>
<li>
<p>🎨 <strong>Finalizing resource icons</strong> for gameplay use</p>
</li>
<li>
<p>🪐 <strong>Revising the Voidi &amp; Home Planet sections</strong> to better support their lore and mechanical importance</p>
</li>
</ul>
<p>These sections <em>will</em> be expanded and refined over time — nothing here is abandoned, just still growing.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></p>
<h3>🚀 Our First Event</h3>
<p>We’re also happy to share that <strong>our first official event is live</strong> and can be found here: <a href=\"https://www.deviantart.com/hermescasp/journal/The-Resonance-Brace-Open-1293657185\">The Resonance Brace.</a></p>
<p>Participation is completely optional — there’s no pressure at all — but the event does offer <strong>unique, limited-time rewards</strong> for those who choose to take part. If you enjoy lore, exploration, or just dipping your toes into the setting, it’s a great place to start.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></p>
<h3>💬 Questions &amp; Closing Thoughts</h3>
<p>If you have any questions, need clarification, or just want to chat about the setting, feel free to leave a comment below. I’ll do my best to respond as soon as possible.</p>
<p>Thank you for taking interest in this small passion project. Whether you’re here to play, read, or simply observe from afar — we hope Dreadfarer offers you something fun, intriguing, and worth your time.</p>
<p>Safe travels,<br />—and welcome to Dreadfarer.</p>
<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></p>', '1', '2026-02-12 04:36:29', '2026-02-12 06:31:59', '2026-02-01 00:00:00');

-- announcements: 1 rows
DELETE FROM `announcements`;
INSERT INTO `announcements` (`id`, `user_id`, `title`, `url`, `created_at`, `updated_at`) VALUES
('2', '1', 'Part 2 of the monthly event has dropped!', 'http://127.0.0.1:8000/monthly-event', '2026-02-12 07:08:45', '2026-02-12 07:08:45');

-- themes: 1 rows
DELETE FROM `themes`;
INSERT INTO `themes` (`id`, `name`, `hash`, `is_default`, `is_active`, `has_css`, `has_header`, `extension`, `creators`, `created_at`, `updated_at`, `has_background`, `extension_background`, `prioritize_css`, `link_id`, `link_type`, `is_user_selectable`, `theme_type`) VALUES
('1', 'Dreadfarer', 'PLcE2eeas3', '1', '1', '1', '0', NULL, '{\"Hermescasp\":\"https:\\/\\/www.deviantart.com\\/hermescasp\"}', NULL, NULL, '0', NULL, '0', NULL, NULL, '0', 'base');

-- galaxies: 1 rows
DELETE FROM `galaxies`;
INSERT INTO `galaxies` (`id`, `name`, `is_current`, `rotation_date`, `created_at`, `updated_at`) VALUES
('1', 'ALPHA 1', '1', '2026-01-01 00:00:00', '2026-02-12 21:01:34', '2026-02-12 21:01:34');

-- planets: 1 rows
DELETE FROM `planets`;
INSERT INTO `planets` (`id`, `galaxy_id`, `name`, `slug`, `rarity`, `type`, `risk_level`, `theme`, `description`, `weather`, `flora_level`, `fauna_level`, `danger_level`, `atmosphere`, `terrain`, `special_notes`, `ref_image_1`, `ref_image_2`, `ref_image_3`, `ref_image_4`, `ref_image_5`, `color_palette`, `discoverer_id`, `discovered_at`, `image_extension`, `thumb_extension`, `is_active`, `has_hazard`, `hazard_name`, `hazard_penalty`, `hidden_item_id`, `created_at`, `updated_at`) VALUES
('4', '1', 'UNKNOWN-1', 'unknown-1', 'uncommon', 'Plains', 'medium', 'Plains, Windy', '<blockquote>
<h3><strong>Planet I &mdash; UNNAMED</strong></h3>
</blockquote>
<p><strong>Discovered by:</strong> <em>&mdash;</em></p>
<p>No verified data available.</p>
<p><br />Explore via <a href=\"https://www.deviantart.com/hermescasp/journal/Expeditions-1283254552\" rel=\"noopener noreferrer nofollow ugc\"><strong>Expeditions</strong></a> to unlock planetary information.</p>
<p class=\"empty-p\">&nbsp;</p>
<p><strong>Planet Type:</strong> UNKNOWN<br /><strong>Status:</strong> MORE DATA REQUIRED<br /><br /></p>
<h4><strong>Known Traits</strong> <em>(Survey: INCONCLUSIVE)</em></h4>
<ul>
<li>
<p>???</p>
</li>
<li>
<p>???</p>
</li>
</ul>
<p><strong>Status:</strong> Undiscovered<br /><strong>Risk Level:</strong> ???<br /><strong>Notes:</strong> ???</p>', 'Windy', 'Normal', 'Minimal', 'Low', 'Thin', 'Plains', NULL, '4-ref1.jpg', '4-ref2.jpg', '4-ref3.jpg', '4-ref4.jpg', '4-ref5.jpg', NULL, '1', '2026-02-19 01:40:37', NULL, NULL, '1', '1', 'Extreme wind', 'The wind on this planet is extreme, nearly constant 100mph, able to knock even the sturdiest travelers over.', '12', '2026-02-12 22:00:34', '2026-02-23 15:06:02');

-- planet_info_tiers: 5 rows
DELETE FROM `planet_info_tiers`;
INSERT INTO `planet_info_tiers` (`id`, `planet_id`, `tier_number`, `info_data`, `created_at`, `updated_at`) VALUES
('1', '4', '1', '{\"type\":\"The Silent Line\",\"risk\":\"N\\/A\",\"description\":\"An ancient migration trench carved into the plains\\u2014perfectly straight and unnaturally precise. Herds avoid crossing it.  Is it geological? Artificial? Forgotten infrastructure?\"}', '2026-02-12 22:00:48', '2026-02-12 22:00:48'),
('2', '4', '2', '{\"type\":\"Stormglass fields\",\"risk\":\"Moderate\",\"description\":\"Patches of ground fused into smooth glass sheets by repeated electrical storm strikes. These zones distort sound and faintly amplify footfalls.  Salvage potential: rare material traces.\"}', '2026-02-12 22:05:35', '2026-02-12 22:05:35'),
('3', '4', '3', '{\"type\":\"Buried Hull Fragment\",\"risk\":\"Low\",\"description\":\"A partially unearthed spacecraft segment, decades old. No recorded crash exists in official logs.  Inside:  Scorched metal  Broken data cores  Missing crew manifest\"}', '2026-02-12 22:05:35', '2026-02-12 22:05:35'),
('4', '4', '4', '{\"type\":\"The Hollow Wind\",\"risk\":\"Moderate\",\"description\":\"Certain areas produce harmonic tones when wind passes over root systems. Some believe the land \\u201csings.\\u201d  Extended exposure causes:  Dizziness  Heightened emotion  Memory recall anomalies\"}', '2026-02-12 22:05:35', '2026-02-12 22:05:35'),
('5', '4', '5', '{\"type\":\"The Long Migration Convergence\",\"risk\":\"Low\",\"description\":\"Once every several rotations, multiple herd routes intersect simultaneously. Predators gather. The sky fills with dust.  This event increases:  Leather yield  Risk  Rare encounter chances\"}', '2026-02-12 22:05:35', '2026-02-12 22:05:35');

-- featured_planets: 1 rows
DELETE FROM `featured_planets`;
INSERT INTO `featured_planets` (`id`, `planet_id`, `galaxy_id`, `name`, `slug`, `rarity`, `type`, `risk_level`, `theme`, `description`, `parsed_description`, `start_at`, `end_at`, `loot_table_id`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
('1', NULL, '1', 'ASTRYX', 'astryx', 'common', 'Plains', 'Low', 'Astryx is dominated by rolling open plains, broken up by shallow ridgelines and low stone outcroppings.', '<h2 style=\"text-align: center;\">🪐 Planetary Overview</h2>
<p><strong>Astryx</strong> is the most thoroughly surveyed world in Alpha 1 and serves as the primary <strong>base planet</strong> for explorers entering the galaxy. While considered stable by most standards, Astryx is far from mundane&mdash;its vast plains, hidden cave systems, and resilient ecosystems make it an ideal starting point for long-term operations.</p>
<p>Travel routes are established, shelters are common, and survival odds are high&mdash;provided one respects the planet&rsquo;s weather patterns.</p>
<hr />
<p>PLANET TYPE: PLAINS<br />STATUS: FULLY SURVEYED<br />RISK LEVEL: LOW</p>
<h2 style=\"text-align: center;\"><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" />🌍 Environment &amp; Terrain</h2>
<p>Astryx is dominated by <strong>rolling open plains</strong>, broken up by shallow ridgelines and low stone outcroppings. Beneath the surface lies an extensive network of <strong>subsurface cave systems</strong>, carved by ancient water flow and tectonic shifts. These caverns provide natural shelter from storms and temperature swings and are frequently used by explorers as temporary bases.</p>
<p>While the surface is largely navigable, Astryx is not without danger. Sudden <strong>dust storms</strong> can sweep across the plains with little warning, erasing tracks and obscuring landmarks for hours&mdash;or days.</p>
<p><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<h2 style=\"text-align: center;\">🌩️ Climate &amp; Weather</h2>
<ul>
<li>
<p>Generally mild temperatures compared to other worlds in Alpha 1</p>
</li>
<li>
<p>Frequent <strong>dust storms that erase tracks</strong></p>
</li>
<li>
<p>Clear skies between storm cycles allow for long-distance visibility</p>
</li>
</ul>
<p>Storms are rarely lethal but can disorient even experienced travelers.</p>
<p><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2 style=\"text-align: center;\">🧬 Native Life</h2>
<p>Astryx supports <strong>abundant fauna</strong>, much of it herd-based and adapted to the open terrain. Predatory species exist but are territorial rather than aggressive, making encounters predictable with caution.</p>
<p>Plant life is hardy, low-growing, and resilient&mdash;well-suited to both grazing fauna and resource harvesting.</p>
<p><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2 style=\"text-align: center;\">📦 Available Resources</h2>
<p>Explorers may collect the following resources on Astryx:</p>
<ul>
<li>
<p><strong>Treated Wood</strong><br />Harvested from resilient native growth adapted to wind and dust exposure.</p>
</li>
<li>
<p><strong>Leather</strong><br />Obtained from abundant fauna, often used for early-stage crafting.</p>
</li>
<li>
<p><strong>Bone Fragments</strong><br />Commonly found near migration routes and natural caverns.</p>
</li>
<li>
<p><strong>Resin</strong><br />Secreted by hardy plant life as protection against storms and arid conditions.</p>
</li>
<li>
<p><strong>Shinevine</strong><br />A faintly luminescent, fast-growing alien plant commonly found along cave entrances and sheltered lowlands.</p>
</li>
</ul>
<p class=\"empty-p\"><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<p><strong><em>Survey complete. Planetary access unrestricted for this cycle.</em></strong><br /><strong><em>Explore wisely, traveler.</em></strong></p>', '<h2 style=\"text-align:center;\">🪐 Planetary Overview</h2>
<p><strong>Astryx</strong> is the most thoroughly surveyed world in Alpha 1 and serves as the primary <strong>base planet</strong> for explorers entering the galaxy. While considered stable by most standards, Astryx is far from mundane—its vast plains, hidden cave systems, and resilient ecosystems make it an ideal starting point for long-term operations.</p>
<p>Travel routes are established, shelters are common, and survival odds are high—provided one respects the planet’s weather patterns.</p>
<hr />
<p>PLANET TYPE: PLAINS<br />STATUS: FULLY SURVEYED<br />RISK LEVEL: LOW</p>
<h2 style=\"text-align:center;\"><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" />🌍 Environment &amp; Terrain</h2>
<p>Astryx is dominated by <strong>rolling open plains</strong>, broken up by shallow ridgelines and low stone outcroppings. Beneath the surface lies an extensive network of <strong>subsurface cave systems</strong>, carved by ancient water flow and tectonic shifts. These caverns provide natural shelter from storms and temperature swings and are frequently used by explorers as temporary bases.</p>
<p>While the surface is largely navigable, Astryx is not without danger. Sudden <strong>dust storms</strong> can sweep across the plains with little warning, erasing tracks and obscuring landmarks for hours—or days.</p>
<p><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<h2 style=\"text-align:center;\">🌩️ Climate &amp; Weather</h2>
<ul>
<li>
<p>Generally mild temperatures compared to other worlds in Alpha 1</p>
</li>
<li>
<p>Frequent <strong>dust storms that erase tracks</strong></p>
</li>
<li>
<p>Clear skies between storm cycles allow for long-distance visibility</p>
</li>
</ul>
<p>Storms are rarely lethal but can disorient even experienced travelers.</p>
<p><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2 style=\"text-align:center;\">🧬 Native Life</h2>
<p>Astryx supports <strong>abundant fauna</strong>, much of it herd-based and adapted to the open terrain. Predatory species exist but are territorial rather than aggressive, making encounters predictable with caution.</p>
<p>Plant life is hardy, low-growing, and resilient—well-suited to both grazing fauna and resource harvesting.</p>
<p><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<hr />
<h2 style=\"text-align:center;\">📦 Available Resources</h2>
<p>Explorers may collect the following resources on Astryx:</p>
<ul>
<li>
<p><strong>Treated Wood</strong><br />Harvested from resilient native growth adapted to wind and dust exposure.</p>
</li>
<li>
<p><strong>Leather</strong><br />Obtained from abundant fauna, often used for early-stage crafting.</p>
</li>
<li>
<p><strong>Bone Fragments</strong><br />Commonly found near migration routes and natural caverns.</p>
</li>
<li>
<p><strong>Resin</strong><br />Secreted by hardy plant life as protection against storms and arid conditions.</p>
</li>
<li>
<p><strong>Shinevine</strong><br />A faintly luminescent, fast-growing alien plant commonly found along cave entrances and sheltered lowlands.</p>
</li>
</ul>
<p class=\"empty-p\"><img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2afda26a-3e21-4b28-ad69-0eac33de1b8a/dl8v41h-7c1d6867-ab75-44cc-b447-2dd895699369.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8yYWZkYTI2YS0zZTIxLTRiMjgtYWQ2OS0wZWFjMzNkZTFiOGEvZGw4djQxaC03YzFkNjg2Ny1hYjc1LTQ0Y2MtYjQ0Ny0yZGQ4OTU2OTkzNjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TCvRtIgVEZDZrLhfLJ-l5IKf7qBdIpgNhqoX8ZqF6ig\" alt=\"Line-divider\" /></p>
<p><strong><em>Survey complete. Planetary access unrestricted for this cycle.</em></strong><br /><strong><em>Explore wisely, traveler.</em></strong></p>', '2026-02-01 00:00:00', '2026-03-01 00:00:00', NULL, '1', '1', '2026-02-13 03:19:39', '2026-02-13 03:32:29');

-- featured_planet_items: 5 rows
DELETE FROM `featured_planet_items`;
INSERT INTO `featured_planet_items` (`featured_planet_id`, `item_id`) VALUES
('1', '4'),
('1', '5'),
('1', '6'),
('1', '7'),
('1', '8');

-- events: 1 rows
DELETE FROM `events`;
INSERT INTO `events` (`id`, `name`, `summary`, `description`, `qna`, `parsed_qna`, `parsed_description`, `image_extension`, `thumb_extension`, `sort`, `category_id`, `is_active`, `occur_start`, `occur_end`, `created_at`, `updated_at`, `deleted_at`, `is_visible`, `start_at`, `end_at`, `parsed_text`, `qna_content`, `qna_parsed_text`, `header_image`, `inspiration_images`, `slug`, `title`, `content`, `loot_table_id`, `award_id`) VALUES
('2', 'The Resonance Brace', 'Port Artemis has begun acting strangely', '<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><br /><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phw-c6ef503a-4d38-4b67-ae73-3b03a70c1898.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3Body1jNmVmNTAzYS00ZDM4LTRiNjctYWU3My0zYjAzYTcwYzE4OTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9ThO69EByuqbK5rnZxGVS2xph6wXcDyM3_VnYrTbhbg\" alt=\"Dreadfarer-blue-da\" /></span></figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><br /><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h2>🛰️ MONTHLY EVENT &mdash; <strong>THE RESONANCE BRACE</strong></h2>
<p><strong>Event Length:</strong> 1 Brace <em>(30 Rotations)</em><br /><strong>Primary Location:</strong> Port Artemis<br /><strong>Event Type:</strong> Exploration &bull; Diplomacy &bull; Mystery &bull; Character Development<br /><strong>Participation Style:</strong> Optional &bull; Non-linear &bull; No daily requirement</p>
<blockquote>
<p><strong>New phases will be released weekly.</strong><br />Players may join at any point during the event!</p>
</blockquote>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h2>🧭 EVENT OVERVIEW</h2>
<p>On an otherwise routine rotation, Port Artemis began to drift out of tune.</p>
<p>Not physically&mdash;no alarms sounded, no hull breaches were reported&mdash;but something subtler shifted. Gravity harmonics fell out of alignment. Archive systems responded to queries that were never made. Doors sealed for centuries unlocked, then sealed again without record.</p>
<p>Most unsettling of all, the <strong>Avatar of Artemis</strong> issued a statement outside of all known protocols:</p>
<blockquote>
<p><em>&ldquo;A resonance has been detected.</em><em><br /></em><em>Resolution is&hellip; optional.&rdquo;</em></p>
</blockquote>
<p>Across the station, the change is felt differently by everyone.<br />A merchant swears their cargo began vibrating in time with the station&rsquo;s pulse.<br />A faction envoy refuses to cross a certain corridor.<br />A Voidi feels a pressure behind their eyes that wasn&rsquo;t there before.</p>
<p>Whatever has begun, Artemis is no longer merely observing.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\" rel=\"noopener ugc noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h2>🧩 EVENT STRUCTURE</h2>
<p><strong>The Resonance Brace</strong> unfolds over <strong>four phases</strong>, each lasting roughly one week.<br />You may participate in <strong>one phase, several, or all</strong>, in any order.</p>
<p>This event emphasizes <strong>story, atmosphere, and character choice</strong>.<br />There are no required outcomes&mdash;and no &ldquo;correct&rdquo; path.</p>
<p><em>However, participating in all weeks will unlock a unique prize!</em></p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\" rel=\"noopener ugc noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h2>🔹 PHASE I &mdash; <em>The Hum Beneath the Hull</em></h2>
<p><strong>Rotations 1&ndash;7</strong></p>
<p>The resonance is <strong>subtle but persistent</strong>. Nothing is overtly dangerous yet&mdash;but Port Artemis no longer behaves like a passive structure. Players are encouraged to notice, question, and react rather than &ldquo;solve.&rdquo;</p>
<p><strong>Entries may drop small information</strong><br />- Market rumors<br />- Dockworker chatter<br />- Redacted system notification<br />- Conflicting faction statements</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\" rel=\"noopener ugc noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h2>🛰️ PRIMARY LOCATIONS</h2>
<h3>🛒 <strong>Market Spine</strong></h3>
<p>The Market Spine is the longest continuous corridor on Port Artemis, a dense artery of stalls, suspended walkways, and modular shopfronts. Neon signage hums softly. Cargo drones weave overhead. The air smells faintly of ozone, spice, and recycled coolant.</p>
<p><strong>What&rsquo;s Different Now:<br /></strong>- Stall signs flicker out of sync, refreshing a fraction of a second late<br />- Price boards reset themselves incorrectly, then correct again<br />- Some merchandise emits a faint vibration when touched<br />- Sound carries oddly&mdash;voices echo just slightly too long</p>
<p><strong>Player Hooks:<br /></strong>- A merchant insists an item &ldquo;wasn&rsquo;t like this yesterday&rdquo;<br />-A payment terminal completes a transaction before input is confirmed<br />- A familiar vendor seems distracted, unsettled, or exhausted</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Mild vertigo<br />- Ringing in the ears<br />- Difficulty focusing during negotiations</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\" rel=\"noopener ugc noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h3>🚢 <strong>Voidstrip Docks</strong></h3>
<p>The Voidstrip Docks are cavernous, open-access bays where civilian and faction ships cycle through. Magnetic clamps anchor hulls while cargo arms unload in steady rhythms. Outside the shielding, the stars drift silently.</p>
<p><strong>What&rsquo;s Different Now:<br /></strong>- Gravity fluctuates briefly during docking or undocking<br />- Tools roll uphill for a second before snapping back<br />- Docking AI confirms successful procedures that never finished<br />- Some ships register phantom power signatures</p>
<p><strong>Player Hooks:<br /></strong>- A ship refuses to disengage clamps without explanation<br />- A pilot claims their navigation log contains entries they never made<br />- Cargo manifests list items that aren&rsquo;t physically present</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Nausea during gravity hiccups<br />- Sudden exhaustion<br />- Disorientation when transitioning between decks</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\" rel=\"noopener ugc noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h3>🧪 <strong>ExoRing</strong></h3>
<p>The ExoRing houses labs, observation platforms, and experimental modules. Clean white panels curve into glassed-in research spaces. Soft lighting and controlled silence dominate the area.</p>
<p><strong>What&rsquo;s Different Now:<br /></strong>- Readouts desync between parallel systems<br />- Observation glass briefly reflects <em>incorrect starfields<br /></em>- Experimental subjects react to stimuli that isn&rsquo;t present<br />- Data logs timestamp events before they occur</p>
<p><strong>Player Hooks:<br /></strong>- A researcher requests outside confirmation of their own instruments<br />- A sealed experiment requests access clearance<br />- A Voidi experiences a physical reaction near certain equipment</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Pressure behind the eyes<br />- Tingling palms or vents<br />- Heightened emotional responses</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\" rel=\"noopener ugc noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h3>🧠 STATION-WIDE PHENOMENA</h3>
<p>These may occur anywhere on Port Artemis during Phase I.<br /><strong>- Low-grade gravity slips</strong> (seconds at most)<br /><strong>- Auditory anomalies</strong> (a hum felt more than heard)<br /><strong>- Unauthorized archive pings<br /></strong><strong>- Doors opening to the correct place&mdash;but at the wrong time</strong></p>
<p>The station&rsquo;s systems acknowledge these events but do not flag them as emergencies.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\" rel=\"noopener ugc noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h3>🤖 THE AVATAR OF ARTEMIS &mdash; PHASE I BEHAVIOR</h3>
<p>The Avatar remains mostly silent.</p>
<p>When it does respond, its answers are:<br />- Short<br />- Precise<br />- Slightly off-context</p>
<p>Example response styles (for inspiration):<br />- &ldquo;This state is within acceptable variance.&rdquo;<br />- &ldquo;Historical precedent exists. Details unavailable.&rdquo;<br />- &ldquo;Resolution is optional.&rdquo;</p>
<p>The Avatar does <strong>not</strong> explain itself yet.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\" rel=\"noopener ugc noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h2>🔹 <strong>PHASE II &mdash; The Doors That Shouldn&rsquo;t Open</strong><br /><strong>Rotations 8&ndash;14</strong></h2>
<p>The resonance is no longer background noise.</p>
<p>Port Artemis has begun <strong>responding</strong>&mdash;not reacting, not malfunctioning, but <em>selecting</em>. Systems that were locked for centuries now answer requests they were never meant to hear. Historical data surfaces without summons. Authority becomes&hellip; negotiable.</p>
<p>This phase focuses on <strong>secrets, ethics, and choice</strong>. Players are encouraged to decide <em>what their character does with knowledge</em>&mdash;not whether they can access it.</p>
<p>Entries may introduce or uncover:<br />- Partial historical records<br />- Conflicting archival truths<br />- Quiet faction pressure<br />- Information that asks to be acted upon</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>📚 <strong>Archive Vaults</strong></h3>
<p>The Archive Vaults are deep-ring chambers sealed behind layered permissions, biometric locks, and obsolete security protocols. Massive data pylons hum softly, storing records that predate most modern factions. Light here is low and intentional.</p>
<p><strong>What&rsquo;s Different Now:<br /></strong>- Vault doors respond to incorrect clearance inputs<br />- Old languages appear translated without interface prompts<br />- Some files open only when <em>not</em> directly requested<br />- Access logs rewrite themselves after use</p>
<p><strong>Player Hooks:<br /></strong>- Your character accesses a file they didn&rsquo;t search for<br />- A record contradicts widely accepted history<br />- A vault opens&mdash;but refuses to close<br />- Another character claims the same file says something different</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Migraines after prolonged archive exposure<br />- Memory bleed (false recollections, d&eacute;j&agrave; vu)<br />- Emotional dissonance tied to uncovered records</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>⚖️ <strong>Diplomatic Concourse</strong></h3>
<p>A neutral forum of circular chambers, banner alcoves, and observation balconies. Delegates, envoys, and intermediaries gather here under Artemis&rsquo; long-standing neutrality protocols.</p>
<p><strong>What&rsquo;s Different Now:<br /></strong>- Translation delays introduce subtle meaning shifts<br />- Recording devices fail during key statements<br />- Banners flicker between historical emblems<br />- Arbitration requests are accepted without formal filing</p>
<p><strong>Player Hooks:<br /></strong>- Your character is asked to witness a meeting they weren&rsquo;t invited to<br />- A faction quietly requests suppression&mdash;or release&mdash;of information<br />- A dispute is ruled on without explanation<br />- A non-faction actor gains temporary authority</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Heightened stress responses<br />- Emotional fatigue<br />- A sense of being watched&mdash;not by people</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>🧠 <strong>Echo Scribe Chambers</strong></h3>
<p>Echo Scribes are semi-autonomous record-entities tasked with preserving Artemis&rsquo; internal history. Their chambers are typically silent, immaculate, and tightly controlled.</p>
<p><strong>What&rsquo;s Different Now:<br /></strong>- Scribes repeat phrases not present in their logs<br />- They ask clarifying questions&mdash;something they do not normally do<br />- Some refuse to record specific events<br />- Others over-record trivial details obsessively</p>
<p><strong>Player Hooks:<br /></strong>- A Scribe asks your character for interpretation, not data<br />- A record refuses to finalize without your presence<br />- A Scribe claims an event has not happened <em>yet<br /></em>-A Scribe goes dormant after a single interaction</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Pressure behind the eyes<br />- Static-like sensations along vents or spine<br />- Difficulty sleeping near station systems</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>🧠 <strong>STATION-WIDE PHENOMENA</strong></h3>
<p>These effects may appear anywhere during Phase II:<br />- Unauthorized access without security escalation<br />- Historical overlays appearing in reflective surfaces<br />- System announcements referencing obsolete timelines<br />- Multiple versions of the same record existing simultaneously</p>
<p>Artemis&rsquo; systems do <strong>not</strong> classify these as errors.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>🤖 <strong>THE AVATAR OF ARTEMIS &mdash; PHASE II BEHAVIOR</strong></h3>
<p>The Avatar becomes more responsive&mdash;but less direct.</p>
<p>Responses may include:<br />- Historical fragments<br />- Questions instead of answers<br />- Clarifications that raise new uncertainties</p>
<p>Example response styles:<br />- &ldquo;This information was sealed for preservation, not concealment.&rdquo;<br />- &ldquo;Authority is contextual.&rdquo;<br />- \"You have accessed a permissible truth.&rdquo;</p>
<p>The Avatar still does not explain its intent.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\" rel=\"noopener ugc noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h2>❓How do I participate?</h2>
<p>When posting your submission, fill out this form and add it to the description! <br />Once staff is available, we will roll for your rewards and that submission will be complete!<br /><br />You may submit for a main mission <strong>once a day, </strong>either a<strong> drawing or writing. </strong></p>
<p>Need an extension for an entry due to something happening? No worries, just dm the group and we will discuss what is possible!</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\" rel=\"noopener ugc noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\" data-da-type=\"da-deviation\" data-deviation=\"{\"><br /><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phw-c6ef503a-4d38-4b67-ae73-3b03a70c1898.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3Body1jNmVmNTAzYS00ZDM4LTRiNjctYWU3My0zYjAzYTcwYzE4OTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9ThO69EByuqbK5rnZxGVS2xph6wXcDyM3_VnYrTbhbg\" alt=\"Dreadfarer-blue-da\" /></span></figure>
</div>', '<h3>❓ COMMON PLAYER QUESTIONS (IC &amp; OOC)</h3>
<p><strong>Is this dangerous?</strong><br />Not yet. Phase I effects are unsettling, not lethal.</p>
<p><strong>Can my character be harmed?</strong><br />Only if <em>you</em> choose to depict harm. No forced injury.</p>
<p><strong>Can my character ignore this entirely?</strong><br />Yes. They may notice nothing—or choose not to care.</p>
<p><strong>Do I have to investigate?</strong><br />No. Observation, rumor, and avoidance are all valid.</p>
<p><strong>Is this affecting factions differently?</strong><br />Not openly. Any faction response is internal and subtle.</p>
<p><strong>What does the Avatar look like? </strong><br />Anything you want, as long as it follows our group rules! The Artemis avatar was designed with familiarity in mind and can shift to anything the viewer finds most comforting.</p>
<p><strong>Is this knowledge dangerous?</strong><br />Potentially. What matters is what characters <em>do</em> with it.</p>
<p><strong>Can factions retaliate against characters?</strong><br />Narratively, yes—subtly. Mechanically, no forced penalties.</p>
<p><strong>Can my character refuse access?</strong><br />Absolutely. Doors opening does not require you to walk through them.</p>
<p><strong>Can information be false or conflicting?</strong><br />Yes. Records may contradict one another intentionally.</p>
<p><strong>Does this lock my character into a faction stance?</strong><br />No. All choices are narrative, non-binding.</p>
<p><strong>Can I play a character overwhelmed by this?</strong><br />Yes. Withdrawal, denial, or stress responses are fully valid.</p>
<p><a href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></p>
<h2>✨ EVENT REWARDS</h2>
<ul>
<li>
<p>Grand Prize; revealed upon completion</p>
</li>
<li>
<p>1 Unique <strong>title</strong></p>
</li>
<li>
<p>Inclusion in the <strong>Canon Event Archive</strong></p>
</li>
</ul>
<p> </p>
<div><a href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></div>
<div><br /><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phw-c6ef503a-4d38-4b67-ae73-3b03a70c1898.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3Body1jNmVmNTAzYS00ZDM4LTRiNjctYWU3My0zYjAzYTcwYzE4OTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9ThO69EByuqbK5rnZxGVS2xph6wXcDyM3_VnYrTbhbg\" alt=\"Dreadfarer-blue-da\" /></div>', '<h3>❓ COMMON PLAYER QUESTIONS (IC &amp; OOC)</h3>
<p><strong>Is this dangerous?</strong><br />Not yet. Phase I effects are unsettling, not lethal.</p>
<p><strong>Can my character be harmed?</strong><br />Only if <em>you</em> choose to depict harm. No forced injury.</p>
<p><strong>Can my character ignore this entirely?</strong><br />Yes. They may notice nothing—or choose not to care.</p>
<p><strong>Do I have to investigate?</strong><br />No. Observation, rumor, and avoidance are all valid.</p>
<p><strong>Is this affecting factions differently?</strong><br />Not openly. Any faction response is internal and subtle.</p>
<p><strong>What does the Avatar look like? </strong><br />Anything you want, as long as it follows our group rules! The Artemis avatar was designed with familiarity in mind and can shift to anything the viewer finds most comforting.</p>
<p><strong>Is this knowledge dangerous?</strong><br />Potentially. What matters is what characters <em>do</em> with it.</p>
<p><strong>Can factions retaliate against characters?</strong><br />Narratively, yes—subtly. Mechanically, no forced penalties.</p>
<p><strong>Can my character refuse access?</strong><br />Absolutely. Doors opening does not require you to walk through them.</p>
<p><strong>Can information be false or conflicting?</strong><br />Yes. Records may contradict one another intentionally.</p>
<p><strong>Does this lock my character into a faction stance?</strong><br />No. All choices are narrative, non-binding.</p>
<p><strong>Can I play a character overwhelmed by this?</strong><br />Yes. Withdrawal, denial, or stress responses are fully valid.</p>
<p><a href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></p>
<h2>✨ EVENT REWARDS</h2>
<ul>
<li>
<p>Grand Prize; revealed upon completion</p>
</li>
<li>
<p>1 Unique <strong>title</strong></p>
</li>
<li>
<p>Inclusion in the <strong>Canon Event Archive</strong></p>
</li>
</ul>
<p> </p>
<div><a href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></div>
<div><br /><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phw-c6ef503a-4d38-4b67-ae73-3b03a70c1898.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3Body1jNmVmNTAzYS00ZDM4LTRiNjctYWU3My0zYjAzYTcwYzE4OTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9ThO69EByuqbK5rnZxGVS2xph6wXcDyM3_VnYrTbhbg\" alt=\"Dreadfarer-blue-da\" /></div>', '<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><br /><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phw-c6ef503a-4d38-4b67-ae73-3b03a70c1898.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3Body1jNmVmNTAzYS00ZDM4LTRiNjctYWU3My0zYjAzYTcwYzE4OTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9ThO69EByuqbK5rnZxGVS2xph6wXcDyM3_VnYrTbhbg\" alt=\"Dreadfarer-blue-da\" /></span></figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><br /><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h2>🛰️ MONTHLY EVENT — <strong>THE RESONANCE BRACE</strong></h2>
<p><strong>Event Length:</strong> 1 Brace <em>(30 Rotations)</em><br /><strong>Primary Location:</strong> Port Artemis<br /><strong>Event Type:</strong> Exploration • Diplomacy • Mystery • Character Development<br /><strong>Participation Style:</strong> Optional • Non-linear • No daily requirement</p>
<blockquote>
<p><strong>New phases will be released weekly.</strong><br />Players may join at any point during the event!</p>
</blockquote>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h2>🧭 EVENT OVERVIEW</h2>
<p>On an otherwise routine rotation, Port Artemis began to drift out of tune.</p>
<p>Not physically—no alarms sounded, no hull breaches were reported—but something subtler shifted. Gravity harmonics fell out of alignment. Archive systems responded to queries that were never made. Doors sealed for centuries unlocked, then sealed again without record.</p>
<p>Most unsettling of all, the <strong>Avatar of Artemis</strong> issued a statement outside of all known protocols:</p>
<blockquote>
<p><em>“A resonance has been detected.</em><em><br /></em><em>Resolution is… optional.”</em></p>
</blockquote>
<p>Across the station, the change is felt differently by everyone.<br />A merchant swears their cargo began vibrating in time with the station’s pulse.<br />A faction envoy refuses to cross a certain corridor.<br />A Voidi feels a pressure behind their eyes that wasn’t there before.</p>
<p>Whatever has begun, Artemis is no longer merely observing.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h2>🧩 EVENT STRUCTURE</h2>
<p><strong>The Resonance Brace</strong> unfolds over <strong>four phases</strong>, each lasting roughly one week.<br />You may participate in <strong>one phase, several, or all</strong>, in any order.</p>
<p>This event emphasizes <strong>story, atmosphere, and character choice</strong>.<br />There are no required outcomes—and no “correct” path.</p>
<p><em>However, participating in all weeks will unlock a unique prize!</em></p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h2>🔹 PHASE I — <em>The Hum Beneath the Hull</em></h2>
<p><strong>Rotations 1–7</strong></p>
<p>The resonance is <strong>subtle but persistent</strong>. Nothing is overtly dangerous yet—but Port Artemis no longer behaves like a passive structure. Players are encouraged to notice, question, and react rather than “solve.”</p>
<p><strong>Entries may drop small information</strong><br />- Market rumors<br />- Dockworker chatter<br />- Redacted system notification<br />- Conflicting faction statements</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h2>🛰️ PRIMARY LOCATIONS</h2>
<h3>🛒 <strong>Market Spine</strong></h3>
<p>The Market Spine is the longest continuous corridor on Port Artemis, a dense artery of stalls, suspended walkways, and modular shopfronts. Neon signage hums softly. Cargo drones weave overhead. The air smells faintly of ozone, spice, and recycled coolant.</p>
<p><strong>What’s Different Now:<br /></strong>- Stall signs flicker out of sync, refreshing a fraction of a second late<br />- Price boards reset themselves incorrectly, then correct again<br />- Some merchandise emits a faint vibration when touched<br />- Sound carries oddly—voices echo just slightly too long</p>
<p><strong>Player Hooks:<br /></strong>- A merchant insists an item “wasn’t like this yesterday”<br />-A payment terminal completes a transaction before input is confirmed<br />- A familiar vendor seems distracted, unsettled, or exhausted</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Mild vertigo<br />- Ringing in the ears<br />- Difficulty focusing during negotiations</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h3>🚢 <strong>Voidstrip Docks</strong></h3>
<p>The Voidstrip Docks are cavernous, open-access bays where civilian and faction ships cycle through. Magnetic clamps anchor hulls while cargo arms unload in steady rhythms. Outside the shielding, the stars drift silently.</p>
<p><strong>What’s Different Now:<br /></strong>- Gravity fluctuates briefly during docking or undocking<br />- Tools roll uphill for a second before snapping back<br />- Docking AI confirms successful procedures that never finished<br />- Some ships register phantom power signatures</p>
<p><strong>Player Hooks:<br /></strong>- A ship refuses to disengage clamps without explanation<br />- A pilot claims their navigation log contains entries they never made<br />- Cargo manifests list items that aren’t physically present</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Nausea during gravity hiccups<br />- Sudden exhaustion<br />- Disorientation when transitioning between decks</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h3>🧪 <strong>ExoRing</strong></h3>
<p>The ExoRing houses labs, observation platforms, and experimental modules. Clean white panels curve into glassed-in research spaces. Soft lighting and controlled silence dominate the area.</p>
<p><strong>What’s Different Now:<br /></strong>- Readouts desync between parallel systems<br />- Observation glass briefly reflects <em>incorrect starfields<br /></em>- Experimental subjects react to stimuli that isn’t present<br />- Data logs timestamp events before they occur</p>
<p><strong>Player Hooks:<br /></strong>- A researcher requests outside confirmation of their own instruments<br />- A sealed experiment requests access clearance<br />- A Voidi experiences a physical reaction near certain equipment</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Pressure behind the eyes<br />- Tingling palms or vents<br />- Heightened emotional responses</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h3>🧠 STATION-WIDE PHENOMENA</h3>
<p>These may occur anywhere on Port Artemis during Phase I.<br /><strong>- Low-grade gravity slips</strong> (seconds at most)<br /><strong>- Auditory anomalies</strong> (a hum felt more than heard)<br /><strong>- Unauthorized archive pings<br /></strong><strong>- Doors opening to the correct place—but at the wrong time</strong></p>
<p>The station’s systems acknowledge these events but do not flag them as emergencies.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h3>🤖 THE AVATAR OF ARTEMIS — PHASE I BEHAVIOR</h3>
<p>The Avatar remains mostly silent.</p>
<p>When it does respond, its answers are:<br />- Short<br />- Precise<br />- Slightly off-context</p>
<p>Example response styles (for inspiration):<br />- “This state is within acceptable variance.”<br />- “Historical precedent exists. Details unavailable.”<br />- “Resolution is optional.”</p>
<p>The Avatar does <strong>not</strong> explain itself yet.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h2>🔹 <strong>PHASE II — The Doors That Shouldn’t Open</strong><br /><strong>Rotations 8–14</strong></h2>
<p>The resonance is no longer background noise.</p>
<p>Port Artemis has begun <strong>responding</strong>—not reacting, not malfunctioning, but <em>selecting</em>. Systems that were locked for centuries now answer requests they were never meant to hear. Historical data surfaces without summons. Authority becomes… negotiable.</p>
<p>This phase focuses on <strong>secrets, ethics, and choice</strong>. Players are encouraged to decide <em>what their character does with knowledge</em>—not whether they can access it.</p>
<p>Entries may introduce or uncover:<br />- Partial historical records<br />- Conflicting archival truths<br />- Quiet faction pressure<br />- Information that asks to be acted upon</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>📚 <strong>Archive Vaults</strong></h3>
<p>The Archive Vaults are deep-ring chambers sealed behind layered permissions, biometric locks, and obsolete security protocols. Massive data pylons hum softly, storing records that predate most modern factions. Light here is low and intentional.</p>
<p><strong>What’s Different Now:<br /></strong>- Vault doors respond to incorrect clearance inputs<br />- Old languages appear translated without interface prompts<br />- Some files open only when <em>not</em> directly requested<br />- Access logs rewrite themselves after use</p>
<p><strong>Player Hooks:<br /></strong>- Your character accesses a file they didn’t search for<br />- A record contradicts widely accepted history<br />- A vault opens—but refuses to close<br />- Another character claims the same file says something different</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Migraines after prolonged archive exposure<br />- Memory bleed (false recollections, déjà vu)<br />- Emotional dissonance tied to uncovered records</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>⚖️ <strong>Diplomatic Concourse</strong></h3>
<p>A neutral forum of circular chambers, banner alcoves, and observation balconies. Delegates, envoys, and intermediaries gather here under Artemis’ long-standing neutrality protocols.</p>
<p><strong>What’s Different Now:<br /></strong>- Translation delays introduce subtle meaning shifts<br />- Recording devices fail during key statements<br />- Banners flicker between historical emblems<br />- Arbitration requests are accepted without formal filing</p>
<p><strong>Player Hooks:<br /></strong>- Your character is asked to witness a meeting they weren’t invited to<br />- A faction quietly requests suppression—or release—of information<br />- A dispute is ruled on without explanation<br />- A non-faction actor gains temporary authority</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Heightened stress responses<br />- Emotional fatigue<br />- A sense of being watched—not by people</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>🧠 <strong>Echo Scribe Chambers</strong></h3>
<p>Echo Scribes are semi-autonomous record-entities tasked with preserving Artemis’ internal history. Their chambers are typically silent, immaculate, and tightly controlled.</p>
<p><strong>What’s Different Now:<br /></strong>- Scribes repeat phrases not present in their logs<br />- They ask clarifying questions—something they do not normally do<br />- Some refuse to record specific events<br />- Others over-record trivial details obsessively</p>
<p><strong>Player Hooks:<br /></strong>- A Scribe asks your character for interpretation, not data<br />- A record refuses to finalize without your presence<br />- A Scribe claims an event has not happened <em>yet<br /></em>-A Scribe goes dormant after a single interaction</p>
<p><strong>Possible Adverse Effects (Optional Flavor):<br /></strong>- Pressure behind the eyes<br />- Static-like sensations along vents or spine<br />- Difficulty sleeping near station systems</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>🧠 <strong>STATION-WIDE PHENOMENA</strong></h3>
<p>These effects may appear anywhere during Phase II:<br />- Unauthorized access without security escalation<br />- Historical overlays appearing in reflective surfaces<br />- System announcements referencing obsolete timelines<br />- Multiple versions of the same record existing simultaneously</p>
<p>Artemis’ systems do <strong>not</strong> classify these as errors.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></span></figure>
</div>
<h3>🤖 <strong>THE AVATAR OF ARTEMIS — PHASE II BEHAVIOR</strong></h3>
<p>The Avatar becomes more responsive—but less direct.</p>
<p>Responses may include:<br />- Historical fragments<br />- Questions instead of answers<br />- Clarifications that raise new uncertainties</p>
<p>Example response styles:<br />- “This information was sealed for preservation, not concealment.”<br />- “Authority is contextual.”<br />- \"You have accessed a permissible truth.”</p>
<p>The Avatar still does not explain its intent.</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<h2>❓How do I participate?</h2>
<p>When posting your submission, fill out this form and add it to the description! <br />Once staff is available, we will roll for your rewards and that submission will be complete!<br /><br />You may submit for a main mission <strong>once a day, </strong>either a<strong> drawing or writing. </strong></p>
<p>Need an extension for an entry due to something happening? No worries, just dm the group and we will discuss what is possible!</p>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><a class=\"jH_xxg\" href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></figure>
</div>
<div class=\"B2Wm85\">
<figure class=\"Wcfucs\" title=\"\"><br /><span class=\"jH_xxg\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phw-c6ef503a-4d38-4b67-ae73-3b03a70c1898.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3Body1jNmVmNTAzYS00ZDM4LTRiNjctYWU3My0zYjAzYTcwYzE4OTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9ThO69EByuqbK5rnZxGVS2xph6wXcDyM3_VnYrTbhbg\" alt=\"Dreadfarer-blue-da\" /></span></figure>
</div>', NULL, NULL, '0', '1', '0', '2026-02-01 00:00:00', '2026-03-01 00:00:00', '2026-02-12 06:11:08', '2026-02-25 01:54:41', NULL, '1', '2026-02-01 00:00:00', '2026-03-01 00:00:00', '<p>Dreadfarer-blue-da Line-divider 🛰️ MONTHLY EVENT — THE RESONANCE BRACE Event Length: 1 Brace (30 Rotations) Primary Location: Port Artemis Event Type: Exploration • Diplomacy • Mystery • Character Development Participation Style: Optional • Non-linear • No daily requirement New phases will be released weekly. Players may join at any point during the event! Line-divider 🧭 EVENT OVERVIEW On an otherwise routine rotation, Port Artemis began to drift out of tune. Not physically—no alarms sounded, no hull breaches were reported—but something subtler shifted. Gravity harmonics fell out of alignment. Archive systems responded to queries that were never made. Doors sealed for centuries unlocked, then sealed again without record. Most unsettling of all, the Avatar of Artemis issued a statement outside of all known protocols: “A resonance has been detected. Resolution is… optional.” Across the station, the change is felt differently by everyone. A merchant swears their cargo began vibrating in time with the station’s pulse. A faction envoy refuses to cross a certain corridor. A Voidi feels a pressure behind their eyes that wasn’t there before. Whatever has begun, Artemis is no longer merely observing. Line-divider 🧩 EVENT STRUCTURE The Resonance Brace unfolds over four phases, each lasting roughly one week. You may participate in one phase, several, or all, in any order. This event emphasizes story, atmosphere, and character choice. There are no required outcomes—and no “correct” path. However, participating in all weeks will unlock a unique prize! Line-divider 🔹 PHASE I — The Hum Beneath the Hull Rotations 1–7 The resonance is subtle but persistent. Nothing is overtly dangerous yet—but Port Artemis no longer behaves like a passive structure. Players are encouraged to notice, question, and react rather than “solve.” Entries may drop small information - Market rumors - Dockworker chatter - Redacted system notification - Conflicting faction statements Line-divider 🛰️ PRIMARY LOCATIONS 🛒 Market Spine The Market Spine is the longest continuous corridor on Port Artemis, a dense artery of stalls, suspended walkways, and modular shopfronts. Neon signage hums softly. Cargo drones weave overhead. The air smells faintly of ozone, spice, and recycled coolant. What’s Different Now: Stall signs flicker out of sync, refreshing a fraction of a second late Price boards reset themselves incorrectly, then correct again Some merchandise emits a faint vibration when touched Sound carries oddly—voices echo just slightly too long Player Hooks: A merchant insists an item “wasn’t like this yesterday” A payment terminal completes a transaction before input is confirmed A familiar vendor seems distracted, unsettled, or exhausted Possible Adverse Effects (Optional Flavor): Mild vertigo Ringing in the ears Difficulty focusing during negotiations Line-divider 🚢 Voidstrip Docks The Voidstrip Docks are cavernous, open-access bays where civilian and faction ships cycle through. Magnetic clamps anchor hulls while cargo arms unload in steady rhythms. Outside the shielding, the stars drift silently. What’s Different Now: Gravity fluctuates briefly during docking or undocking Tools roll uphill for a second before snapping back Docking AI confirms successful procedures that never finished Some ships register phantom power signatures Player Hooks: A ship refuses to disengage clamps without explanation A pilot claims their navigation log contains entries they never made Cargo manifests list items that aren’t physically present Possible Adverse Effects (Optional Flavor): Nausea during gravity hiccups Sudden exhaustion Disorientation when transitioning between decks Line-divider 🧪 ExoRing The ExoRing houses labs, observation platforms, and experimental modules. Clean white panels curve into glassed-in research spaces. Soft lighting and controlled silence dominate the area. What’s Different Now: Readouts desync between parallel systems Observation glass briefly reflects incorrect starfields Experimental subjects react to stimuli that isn’t present Data logs timestamp events before they occur Player Hooks: A researcher requests outside confirmation of their own instruments A sealed experiment requests access clearance A Voidi experiences a physical reaction near certain equipment Possible Adverse Effects (Optional Flavor): Pressure behind the eyes Tingling palms or vents Heightened emotional responses Line-divider 🧠 STATION-WIDE PHENOMENA These may occur anywhere on Port Artemis during Phase I. Low-grade gravity slips (seconds at most) Auditory anomalies (a hum felt more than heard) Unauthorized archive pings Doors opening to the correct place—but at the wrong time The station’s systems acknowledge these events but do not flag them as emergencies. Line-divider 🤖 THE AVATAR OF ARTEMIS — PHASE I BEHAVIOR The Avatar remains mostly silent. When it does respond, its answers are: Short Precise Slightly off-context Example response styles (for inspiration): “This state is within acceptable variance.” “Historical precedent exists. Details unavailable.” “Resolution is optional.” The Avatar does not explain itself yet. Line-divider 🔹 PHASE II — The Doors That Shouldn’t Open Rotations 8–14 The resonance is no longer background noise. Port Artemis has begun responding—not reacting, not malfunctioning, but selecting. Systems that were locked for centuries now answer requests they were never meant to hear. Historical data surfaces without summons. Authority becomes… negotiable. This phase focuses on secrets, ethics, and choice. Players are encouraged to decide what their character does with knowledge—not whether they can access it. Entries may introduce or uncover: Partial historical records Conflicting archival truths Quiet faction pressure Information that asks to be acted upon Line-divider 📚 Archive Vaults The Archive Vaults are deep-ring chambers sealed behind layered permissions, biometric locks, and obsolete security protocols. Massive data pylons hum softly, storing records that predate most modern factions. Light here is low and intentional. What’s Different Now: Vault doors respond to incorrect clearance inputs Old languages appear translated without interface prompts Some files open only when not directly requested Access logs rewrite themselves after use Player Hooks: Your character accesses a file they didn’t search for A record contradicts widely accepted history A vault opens—but refuses to close Another character claims the same file says something different Possible Adverse Effects (Optional Flavor): Migraines after prolonged archive exposure Memory bleed (false recollections, déjà vu) Emotional dissonance tied to uncovered records Line-divider ⚖️ Diplomatic Concourse A neutral forum of circular chambers, banner alcoves, and observation balconies. Delegates, envoys, and intermediaries gather here under Artemis’ long-standing neutrality protocols. What’s Different Now: Translation delays introduce subtle meaning shifts Recording devices fail during key statements Banners flicker between historical emblems Arbitration requests are accepted without formal filing Player Hooks: Your character is asked to witness a meeting they weren’t invited to A faction quietly requests suppression—or release—of information A dispute is ruled on without explanation A non-faction actor gains temporary authority Possible Adverse Effects (Optional Flavor): Heightened stress responses Emotional fatigue A sense of being watched—not by people Line-divider 🧠 Echo Scribe Chambers Echo Scribes are semi-autonomous record-entities tasked with preserving Artemis’ internal history. Their chambers are typically silent, immaculate, and tightly controlled. What’s Different Now: Scribes repeat phrases not present in their logs They ask clarifying questions—something they do not normally do Some refuse to record specific events Others over-record trivial details obsessively Player Hooks: A Scribe asks your character for interpretation, not data A record refuses to finalize without your presence A Scribe claims an event has not happened yet A Scribe goes dormant after a single interaction Possible Adverse Effects (Optional Flavor): Pressure behind the eyes Static-like sensations along vents or spine Difficulty sleeping near station systems Line-divider 🧠 STATION-WIDE PHENOMENA These effects may appear anywhere during Phase II: Unauthorized access without security escalation Historical overlays appearing in reflective surfaces System announcements referencing obsolete timelines Multiple versions of the same record existing simultaneously Artemis’ systems do not classify these as errors. Line-divider 🤖 THE AVATAR OF ARTEMIS — PHASE II BEHAVIOR The Avatar becomes more responsive—but less direct. Responses may include: Historical fragments Questions instead of answers Clarifications that raise new uncertainties Example response styles: “This information was sealed for preservation, not concealment.” “Authority is contextual.” “You have accessed a permissible truth.” The Avatar still does not explain its intent. Line-divider ❓ COMMON PLAYER QUESTIONS (IC &amp; OOC) Is this dangerous? Not yet. Phase I effects are unsettling, not lethal. Can my character be harmed? Only if you choose to depict harm. No forced injury. Can my character ignore this entirely? Yes. They may notice nothing—or choose not to care. Do I have to investigate? No. Observation, rumor, and avoidance are all valid. Is this affecting factions differently? Not openly. Any faction response is internal and subtle. What does the Avatar look like? Anything you want, as long as it follows our group rules! The Artemis avatar was designed with familiarity in mind and can shift to anything the viewer finds most comforting. Is this knowledge dangerous? Potentially. What matters is what characters do with it. Can factions retaliate against characters? Narratively, yes—subtly. Mechanically, no forced penalties. Can my character refuse access? Absolutely. Doors opening does not require you to walk through them. Can information be false or conflicting? Yes. Records may contradict one another intentionally. Does this lock my character into a faction stance? No. All choices are narrative, non-binding. Can I play a character overwhelmed by this? Yes. Withdrawal, denial, or stress responses are fully valid. More questions may be asked in this journal\'s comments! v Line-divider ✨ EVENT REWARDS Grand Prize; revealed upon completion 1 Unique title Inclusion in the Canon Event Archive Line-divider ❓How do I participate? When posting your submission, fill out this form and add it to the description! Once staff is available, we will roll for your rewards and that submission will be complete! You may submit for a main mission once a day, either a drawing or writing. Event: Registration link: Faction: Characters total CRED/REP: CRED/REP total: Need an extension for an entry due to something happening? No worries, just dm the group and we will discuss what is possible! Submit mission pieces here! Line-divider Dreadfarer-blue-da</p>', '<h3><a href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></h3>
<h3>❓ COMMON PLAYER QUESTIONS (IC &amp; OOC)</h3>
<p><strong>Is this dangerous?</strong><br />Not yet. Phase I effects are unsettling, not lethal.</p>
<p><strong>Can my character be harmed?</strong><br />Only if <em>you</em> choose to depict harm. No forced injury.</p>
<p><strong>Can my character ignore this entirely?</strong><br />Yes. They may notice nothing—or choose not to care.</p>
<p><strong>Do I have to investigate?</strong><br />No. Observation, rumor, and avoidance are all valid.</p>
<p><strong>Is this affecting factions differently?</strong><br />Not openly. Any faction response is internal and subtle.</p>
<p><strong>What does the Avatar look like?</strong><br />Anything you want, as long as it follows our group rules! The Artemis avatar was designed with familiarity in mind and can shift to anything the viewer finds most comforting.</p>
<p><strong>Is this knowledge dangerous?</strong><br />Potentially. What matters is what characters <em>do</em> with it.</p>
<p><strong>Can factions retaliate against characters?</strong><br />Narratively, yes—subtly. Mechanically, no forced penalties.</p>
<p><strong>Can my character refuse access?</strong><br />Absolutely. Doors opening does not require you to walk through them.</p>
<p><strong>Can information be false or conflicting?</strong><br />Yes. Records may contradict one another intentionally.</p>
<p><strong>Does this lock my character into a faction stance?</strong><br />No. All choices are narrative, non-binding.</p>
<p><strong>Can I play a character overwhelmed by this?</strong><br />Yes. Withdrawal, denial, or stress responses are fully valid.</p>
<div><a href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></div>
<div><br /><img style=\"margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phw-c6ef503a-4d38-4b67-ae73-3b03a70c1898.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3Body1jNmVmNTAzYS00ZDM4LTRiNjctYWU3My0zYjAzYTcwYzE4OTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9ThO69EByuqbK5rnZxGVS2xph6wXcDyM3_VnYrTbhbg\" alt=\"Dreadfarer-blue-da\" /></div>', '<h3><a href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></h3>
<h3>❓ COMMON PLAYER QUESTIONS (IC &amp; OOC)</h3>
<p><strong>Is this dangerous?</strong><br />Not yet. Phase I effects are unsettling, not lethal.</p>
<p><strong>Can my character be harmed?</strong><br />Only if <em>you</em> choose to depict harm. No forced injury.</p>
<p><strong>Can my character ignore this entirely?</strong><br />Yes. They may notice nothing—or choose not to care.</p>
<p><strong>Do I have to investigate?</strong><br />No. Observation, rumor, and avoidance are all valid.</p>
<p><strong>Is this affecting factions differently?</strong><br />Not openly. Any faction response is internal and subtle.</p>
<p><strong>What does the Avatar look like?</strong><br />Anything you want, as long as it follows our group rules! The Artemis avatar was designed with familiarity in mind and can shift to anything the viewer finds most comforting.</p>
<p><strong>Is this knowledge dangerous?</strong><br />Potentially. What matters is what characters <em>do</em> with it.</p>
<p><strong>Can factions retaliate against characters?</strong><br />Narratively, yes—subtly. Mechanically, no forced penalties.</p>
<p><strong>Can my character refuse access?</strong><br />Absolutely. Doors opening does not require you to walk through them.</p>
<p><strong>Can information be false or conflicting?</strong><br />Yes. Records may contradict one another intentionally.</p>
<p><strong>Does this lock my character into a faction stance?</strong><br />No. All choices are narrative, non-binding.</p>
<p><strong>Can I play a character overwhelmed by this?</strong><br />Yes. Withdrawal, denial, or stress responses are fully valid.</p>
<div><a href=\"https://www.deviantart.com/stash/02bc2vy7pxg7\"><img style=\"margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phq-1854d386-5701-43ec-9e35-fcee3afbfa55.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3BocS0xODU0ZDM4Ni01NzAxLTQzZWMtOWUzNS1mY2VlM2FmYmZhNTUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wpiTJ0X5i7QzYTW7-yWwx43ku7WFQ-dSpX9xoF11ACc\" alt=\"Line-divider\" /></a></div>
<div><br /><img style=\"margin-left: auto; margin-right: auto;\" src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f38b66c-6df1-4507-9f5b-8cbd94021214/dle7phw-c6ef503a-4d38-4b67-ae73-3b03a70c1898.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi81ZjM4YjY2Yy02ZGYxLTQ1MDctOWY1Yi04Y2JkOTQwMjEyMTQvZGxlN3Body1jNmVmNTAzYS00ZDM4LTRiNjctYWU3My0zYjAzYTcwYzE4OTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9ThO69EByuqbK5rnZxGVS2xph6wXcDyM3_VnYrTbhbg\" alt=\"Dreadfarer-blue-da\" /></div>', NULL, '[\"1771206482_699277527841e_88555d0419b3b01aef5167e5263461b9.jpg\",\"1771206482_69927752789df_a495f2d0c833ebfe89bc6fea76af6f53.jpg\",\"1771206482_6992775278f09_04c7293be5dcff51941ad183dcc2e393.jpg\",\"1771206482_6992775279419_1c1e149b62348aa7eab3d9fe7432d659.jpg\",\"1771206482_6992775279a68_3fe75a457a2084a93ae5f2db38592720.jpg\",\"1771206482_6992775279e95_cb8e20a4c583b5e8d91e829379042224.jpg\",\"1771206482_699277527a2a6_c961445196f89db1b4620e0b6a9c5def.jpg\",\"1771206482_699277527a6d4_f68c3018661ad6faf9277bab2e6a383b.jpg\",\"1771206482_699277527ae00_852641be7edec5dd7eb50225f9c37858.jpg\",\"1771206482_699277527b288_Grand_Barter_Bazaar_Sign_in_4.4.png.webp\"]', 'The-Resonance-Brace', 'The Resonance Brace', '<p>Dreadfarer-blue-da Line-divider 🛰️ MONTHLY EVENT — THE RESONANCE BRACE Event Length: 1 Brace (30 Rotations) Primary Location: Port Artemis Event Type: Exploration • Diplomacy • Mystery • Character Development Participation Style: Optional • Non-linear • No daily requirement New phases will be released weekly. Players may join at any point during the event! Line-divider 🧭 EVENT OVERVIEW On an otherwise routine rotation, Port Artemis began to drift out of tune. Not physically—no alarms sounded, no hull breaches were reported—but something subtler shifted. Gravity harmonics fell out of alignment. Archive systems responded to queries that were never made. Doors sealed for centuries unlocked, then sealed again without record. Most unsettling of all, the Avatar of Artemis issued a statement outside of all known protocols: “A resonance has been detected. Resolution is… optional.” Across the station, the change is felt differently by everyone. A merchant swears their cargo began vibrating in time with the station’s pulse. A faction envoy refuses to cross a certain corridor. A Voidi feels a pressure behind their eyes that wasn’t there before. Whatever has begun, Artemis is no longer merely observing. Line-divider 🧩 EVENT STRUCTURE The Resonance Brace unfolds over four phases, each lasting roughly one week. You may participate in one phase, several, or all, in any order. This event emphasizes story, atmosphere, and character choice. There are no required outcomes—and no “correct” path. However, participating in all weeks will unlock a unique prize! Line-divider 🔹 PHASE I — The Hum Beneath the Hull Rotations 1–7 The resonance is subtle but persistent. Nothing is overtly dangerous yet—but Port Artemis no longer behaves like a passive structure. Players are encouraged to notice, question, and react rather than “solve.” Entries may drop small information - Market rumors - Dockworker chatter - Redacted system notification - Conflicting faction statements Line-divider 🛰️ PRIMARY LOCATIONS 🛒 Market Spine The Market Spine is the longest continuous corridor on Port Artemis, a dense artery of stalls, suspended walkways, and modular shopfronts. Neon signage hums softly. Cargo drones weave overhead. The air smells faintly of ozone, spice, and recycled coolant. What’s Different Now: Stall signs flicker out of sync, refreshing a fraction of a second late Price boards reset themselves incorrectly, then correct again Some merchandise emits a faint vibration when touched Sound carries oddly—voices echo just slightly too long Player Hooks: A merchant insists an item “wasn’t like this yesterday” A payment terminal completes a transaction before input is confirmed A familiar vendor seems distracted, unsettled, or exhausted Possible Adverse Effects (Optional Flavor): Mild vertigo Ringing in the ears Difficulty focusing during negotiations Line-divider 🚢 Voidstrip Docks The Voidstrip Docks are cavernous, open-access bays where civilian and faction ships cycle through. Magnetic clamps anchor hulls while cargo arms unload in steady rhythms. Outside the shielding, the stars drift silently. What’s Different Now: Gravity fluctuates briefly during docking or undocking Tools roll uphill for a second before snapping back Docking AI confirms successful procedures that never finished Some ships register phantom power signatures Player Hooks: A ship refuses to disengage clamps without explanation A pilot claims their navigation log contains entries they never made Cargo manifests list items that aren’t physically present Possible Adverse Effects (Optional Flavor): Nausea during gravity hiccups Sudden exhaustion Disorientation when transitioning between decks Line-divider 🧪 ExoRing The ExoRing houses labs, observation platforms, and experimental modules. Clean white panels curve into glassed-in research spaces. Soft lighting and controlled silence dominate the area. What’s Different Now: Readouts desync between parallel systems Observation glass briefly reflects incorrect starfields Experimental subjects react to stimuli that isn’t present Data logs timestamp events before they occur Player Hooks: A researcher requests outside confirmation of their own instruments A sealed experiment requests access clearance A Voidi experiences a physical reaction near certain equipment Possible Adverse Effects (Optional Flavor): Pressure behind the eyes Tingling palms or vents Heightened emotional responses Line-divider 🧠 STATION-WIDE PHENOMENA These may occur anywhere on Port Artemis during Phase I. Low-grade gravity slips (seconds at most) Auditory anomalies (a hum felt more than heard) Unauthorized archive pings Doors opening to the correct place—but at the wrong time The station’s systems acknowledge these events but do not flag them as emergencies. Line-divider 🤖 THE AVATAR OF ARTEMIS — PHASE I BEHAVIOR The Avatar remains mostly silent. When it does respond, its answers are: Short Precise Slightly off-context Example response styles (for inspiration): “This state is within acceptable variance.” “Historical precedent exists. Details unavailable.” “Resolution is optional.” The Avatar does not explain itself yet. Line-divider 🔹 PHASE II — The Doors That Shouldn’t Open Rotations 8–14 The resonance is no longer background noise. Port Artemis has begun responding—not reacting, not malfunctioning, but selecting. Systems that were locked for centuries now answer requests they were never meant to hear. Historical data surfaces without summons. Authority becomes… negotiable. This phase focuses on secrets, ethics, and choice. Players are encouraged to decide what their character does with knowledge—not whether they can access it. Entries may introduce or uncover: Partial historical records Conflicting archival truths Quiet faction pressure Information that asks to be acted upon Line-divider 📚 Archive Vaults The Archive Vaults are deep-ring chambers sealed behind layered permissions, biometric locks, and obsolete security protocols. Massive data pylons hum softly, storing records that predate most modern factions. Light here is low and intentional. What’s Different Now: Vault doors respond to incorrect clearance inputs Old languages appear translated without interface prompts Some files open only when not directly requested Access logs rewrite themselves after use Player Hooks: Your character accesses a file they didn’t search for A record contradicts widely accepted history A vault opens—but refuses to close Another character claims the same file says something different Possible Adverse Effects (Optional Flavor): Migraines after prolonged archive exposure Memory bleed (false recollections, déjà vu) Emotional dissonance tied to uncovered records Line-divider ⚖️ Diplomatic Concourse A neutral forum of circular chambers, banner alcoves, and observation balconies. Delegates, envoys, and intermediaries gather here under Artemis’ long-standing neutrality protocols. What’s Different Now: Translation delays introduce subtle meaning shifts Recording devices fail during key statements Banners flicker between historical emblems Arbitration requests are accepted without formal filing Player Hooks: Your character is asked to witness a meeting they weren’t invited to A faction quietly requests suppression—or release—of information A dispute is ruled on without explanation A non-faction actor gains temporary authority Possible Adverse Effects (Optional Flavor): Heightened stress responses Emotional fatigue A sense of being watched—not by people Line-divider 🧠 Echo Scribe Chambers Echo Scribes are semi-autonomous record-entities tasked with preserving Artemis’ internal history. Their chambers are typically silent, immaculate, and tightly controlled. What’s Different Now: Scribes repeat phrases not present in their logs They ask clarifying questions—something they do not normally do Some refuse to record specific events Others over-record trivial details obsessively Player Hooks: A Scribe asks your character for interpretation, not data A record refuses to finalize without your presence A Scribe claims an event has not happened yet A Scribe goes dormant after a single interaction Possible Adverse Effects (Optional Flavor): Pressure behind the eyes Static-like sensations along vents or spine Difficulty sleeping near station systems Line-divider 🧠 STATION-WIDE PHENOMENA These effects may appear anywhere during Phase II: Unauthorized access without security escalation Historical overlays appearing in reflective surfaces System announcements referencing obsolete timelines Multiple versions of the same record existing simultaneously Artemis’ systems do not classify these as errors. Line-divider 🤖 THE AVATAR OF ARTEMIS — PHASE II BEHAVIOR The Avatar becomes more responsive—but less direct. Responses may include: Historical fragments Questions instead of answers Clarifications that raise new uncertainties Example response styles: “This information was sealed for preservation, not concealment.” “Authority is contextual.” “You have accessed a permissible truth.” The Avatar still does not explain its intent. Line-divider ❓ COMMON PLAYER QUESTIONS (IC &amp; OOC) Is this dangerous? Not yet. Phase I effects are unsettling, not lethal. Can my character be harmed? Only if you choose to depict harm. No forced injury. Can my character ignore this entirely? Yes. They may notice nothing—or choose not to care. Do I have to investigate? No. Observation, rumor, and avoidance are all valid. Is this affecting factions differently? Not openly. Any faction response is internal and subtle. What does the Avatar look like? Anything you want, as long as it follows our group rules! The Artemis avatar was designed with familiarity in mind and can shift to anything the viewer finds most comforting. Is this knowledge dangerous? Potentially. What matters is what characters do with it. Can factions retaliate against characters? Narratively, yes—subtly. Mechanically, no forced penalties. Can my character refuse access? Absolutely. Doors opening does not require you to walk through them. Can information be false or conflicting? Yes. Records may contradict one another intentionally. Does this lock my character into a faction stance? No. All choices are narrative, non-binding. Can I play a character overwhelmed by this? Yes. Withdrawal, denial, or stress responses are fully valid. More questions may be asked in this journal\'s comments! v Line-divider ✨ EVENT REWARDS Grand Prize; revealed upon completion 1 Unique title Inclusion in the Canon Event Archive Line-divider ❓How do I participate? When posting your submission, fill out this form and add it to the description! Once staff is available, we will roll for your rewards and that submission will be complete! You may submit for a main mission once a day, either a drawing or writing. Event: Registration link: Faction: Characters total CRED/REP: CRED/REP total: Need an extension for an entry due to something happening? No worries, just dm the group and we will discuss what is possible! Submit mission pieces here! Line-divider Dreadfarer-blue-da</p>', '2', '1');

-- contracts: 1 rows
DELETE FROM `contracts`;
INSERT INTO `contracts` (`id`, `name`, `summary`, `description`, `parsed_description`, `location`, `planet_id`, `required_items`, `rewards`, `max_claims`, `how_it_works`, `parsed_how_it_works`, `image_extension`, `thumb_extension`, `sort`, `is_active`, `is_randomizable`, `unlock_contract_chance`, `rarity_weight`, `occur_start`, `occur_end`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1', '📄 Contract 01 — Plainside Harvest', 'Collect items from a certain location and turn in for a reward', NULL, '<p><strong>Location:</strong> <br />Unknown<br /><br /><strong>Objective: <br /></strong>Collect 5× Treated Wood</p>
<p><strong>Turn-In Reward:<br /></strong>+10 Credits<br />+ 7 Reputation<br />+5 Exploration Progress</p>', 'Hint: Windy', '4', '[{\"item_id\":\"4\",\"quantity\":\"3\"}]', '[{\"type\":\"currency\",\"id\":\"2\",\"quantity\":\"15\"},{\"type\":\"currency\",\"id\":\"1\",\"quantity\":\"8\"},{\"type\":\"item\",\"id\":\"4\",\"quantity\":\"1\"}]', '1', NULL, NULL, NULL, NULL, '0', '1', '0', '0', '1', '2026-02-01 00:00:00', '2026-03-01 00:00:00', '2026-02-12 19:17:19', '2026-02-16 01:13:28', NULL);

-- forums: 2 rows
DELETE FROM `forums`;
INSERT INTO `forums` (`id`, `name`, `description`, `parsed_description`, `layout`, `is_active`, `is_locked`, `staff_only`, `sort`, `role_limit`, `parent_id`, `has_image`, `extension`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1', 'Offtopic Discussion', 'Discuss anything unrelated to the ARPG here!', 'Discuss anything unrelated to the ARPG here!', '0', '1', '0', '0', '0', '2', NULL, '0', NULL, '2026-02-12 01:44:55', '2026-02-12 01:44:55', NULL),
('2', 'ARPG discussion', 'Discuss anything regarding the ARPG!', 'Discuss anything regarding the ARPG!', '0', '1', '0', '0', '0', '2', NULL, '0', NULL, '2026-02-12 01:45:50', '2026-02-12 01:45:50', NULL);

-- homeworld_images: 5 rows
DELETE FROM `homeworld_images`;
INSERT INTO `homeworld_images` (`id`, `image_name`, `image_extension`, `alt_text`, `caption`, `sort_order`, `created_at`, `updated_at`) VALUES
('1', '1771906037_699d23f51d0aa.png', 'png', NULL, NULL, '1', '2026-02-24 04:07:17', '2026-02-24 04:07:17'),
('2', '1771906037_699d23f58768b.png', 'png', NULL, NULL, '2', '2026-02-24 04:07:17', '2026-02-24 04:07:17'),
('3', '1771906037_699d23f5890e9.png', 'png', NULL, NULL, '3', '2026-02-24 04:07:17', '2026-02-24 04:07:17'),
('4', '1771906037_699d23f58ba37.png', 'png', NULL, NULL, '4', '2026-02-24 04:07:17', '2026-02-24 04:07:17'),
('5', '1771906037_699d23f58d86d.png', 'png', NULL, NULL, '5', '2026-02-24 04:07:17', '2026-02-24 04:07:17');

-- ranks: 4 rows
DELETE FROM `ranks`;
INSERT INTO `ranks` (`id`, `name`, `sort`, `color`, `icon`, `description`, `parsed_description`) VALUES
('1', 'Owner', '3', 'F9E092', 'fas fa-moon', 'Primary developer and creator of the species.', 'Primary developer and creator of the species.'),
('2', 'Member', '0', '00FFFF', 'fas fa-meteor', 'A regular member of the site.', 'A regular member of the site.'),
('3', 'Co-owner', '2', '7900FF', 'fas fa-sun', 'Assistant to the owner and helper in everything relating to the website and formatting.', 'Assistant to the owner and helper in everything relating to the website and formatting.'),
('4', 'Staff', '1', 'FF0000', 'fas fa-star', NULL, NULL);

-- rank_powers: 15 rows
DELETE FROM `rank_powers`;
INSERT INTO `rank_powers` (`rank_id`, `power`) VALUES
('3', 'edit_data'),
('3', 'edit_inventories'),
('3', 'edit_pages'),
('3', 'edit_ranks'),
('3', 'edit_site_settings'),
('3', 'edit_user_info'),
('3', 'manage_characters'),
('3', 'manage_raffles'),
('3', 'manage_reports'),
('3', 'manage_submissions'),
('4', 'edit_inventories'),
('4', 'manage_characters'),
('4', 'manage_raffles'),
('4', 'manage_reports'),
('4', 'manage_submissions');

SET FOREIGN_KEY_CHECKS=1;
