---
    title: Tony Holroyd - CV
    layout: cv
---

<header>Tony John Holroyd</header>
linkedin@tonyholroyd.co.uk / 0780 332 1919

# Summary
Tony is an ISTQB qualified test engineer and ITIL qualified support engineer. He has delivered in both agile (scrum and kanban) and waterfall projects
as well as mixed agile-waterfall projects. He has taken the role of test lead with teams of both experienced and new testers. Working as a consultant
with multiple clients Tony has experience of many industries, developer teams, and test tools and approaches.

Tony has experience of automated application testing through Selenium, HTTP (REST) API and JDBC. He has built test frameworks in Java and Scala
integrating with Jenkins CI servers. With roles of developer, customer and operations support, and development and integration engineer Tony has
gained a solid background in the many sides of the SDLC. He uses this experience to guide test planning and criteria creation.

Managers consider him a valuable asset to the team; JPMorgan and Tesco have actively rehired him.

# Key Skills

<div id="skills">
    {% for skillset in site.data.testcv.skills %}
    <section class="skill">
        <h2>{{ skillset[0] }}</h2>
        <table>
            {% for skill in skillset[1] %}
            <tr><td>{{ skill[0] }}</td><td>{{ skill[1] }}</td></tr>
            {% endfor %}
        </table>
    </section>
    {% endfor %}
</div>

# Employment

{% for job in site.testjobs reversed %}
{% assign when = job.when | split: " " | first %}
<section class="job">
    <h2><span class="when">{{ when }}</span><span class="where">{{ job.when | remove_first: when }}</span>, {{ job.role }}.</h2>
    <ul>
        {% for skill in job.skills %}
            <li>{{ skill }}</li>
        {% endfor %}
    </ul>
    {{ job.content }}
</section>
{% endfor %}

# Contracts

{% for job in site.testcontracts reversed %}
<section class="contract">
    {% for contract in job.contracts %}
    <h2><span class="where">{{ contract.when }}</span>, {{ contract.role }}.</h2>
    {% endfor %}
    <ul>
        {% for skill in job.skills %}
            <li>{{ skill }}</li>
        {% endfor %}
    </ul>
    {{ job.content }}
</section>
{% endfor %}

{% for education in site.data.testcv.education %}
<h1>{{ education[0] }}</h1>
<section class="education">
<ul>
    {% for qual in education[1] %}
    {% assign when = qual | split: " " | first %}
    <li><span class="when">{{ when }}</span> {{ qual | remove_first: when}}</li>
    {% endfor %}
</ul>
</section>
{% endfor %}