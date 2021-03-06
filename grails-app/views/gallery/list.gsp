<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title>List image Galleries</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">Create image Gallery</g:link></span>
        </div>
        <div class="body">
            <h1>List image Galleries</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                            <g:sortableColumn property="id" title="Id" />
                            <g:sortableColumn property="name" title="Name" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${galleryList}" status="i" var="gallery">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td><g:link action="show" id="${gallery.id}">${gallery.id}</g:link></td>
                            <td>${gallery.name}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${galleryTotal}" />
            </div>
        </div>
    </body>
</html>
