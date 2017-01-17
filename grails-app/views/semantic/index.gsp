<!DOCTYPE html>
<html>
<head>
    <!-- Standard Meta -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- Site Properties -->
    <title>Homepage - Semantic</title>
    <asset:stylesheet href="semantic/semantic.css"/>
    %{--<asset:stylesheet href="semantic/reset.css"/>--}%
    %{--<asset:stylesheet href="semantic/site.css"/>--}%
    %{--<asset:stylesheet href="semantic/container.css"/>--}%
    %{--<asset:stylesheet href="semantic/grid.css"/>--}%
    %{--<asset:stylesheet href="semantic/header.css"/>--}%
    %{--<asset:stylesheet href="semantic/image.css"/>--}%
    %{--<asset:stylesheet href="semantic/menu.css"/>--}%
    %{--<asset:stylesheet href="semantic/divider.css"/>--}%
    %{--<asset:stylesheet href="semantic/dropdown.css"/>--}%
    %{--<asset:stylesheet href="semantic/segment.css"/>--}%
    %{--<asset:stylesheet href="semantic/button.css"/>--}%
    %{--<asset:stylesheet href="semantic/list.css"/>--}%
    <asset:stylesheet href="semantic/icon.css"/>
    %{--<asset:stylesheet href="semantic/sidebar.css"/>--}%
    %{--<asset:stylesheet href="semantic/transition.css"/>--}%
    %{--<asset:stylesheet href="semantic/modal.css"/>--}%
    %{--<asset:stylesheet href="semantic/dropdown.css"/>--}%
    %{--<asset:stylesheet href="semantic/dimmer.css"/>--}%


    <style type="text/css">

    .hidden.menu {
        display: none;
    }

    .masthead.segment {
        min-height: 700px;
        padding: 1em 0em;
    }

    .masthead .logo.item img {
        margin-right: 1em;
    }

    .masthead .ui.menu .ui.button {
        margin-left: 0.5em;
    }

    .masthead h1.ui.header {
        margin-top: 3em;
        margin-bottom: 0em;
        font-size: 4em;
        font-weight: normal;
    }

    .masthead h2 {
        font-size: 1.7em;
        font-weight: normal;
    }

    .ui.vertical.stripe {
        padding: 8em 0em;
    }

    .ui.vertical.stripe h3 {
        font-size: 2em;
    }

    .ui.vertical.stripe .button + h3,
    .ui.vertical.stripe p + h3 {
        margin-top: 3em;
    }

    .ui.vertical.stripe .floated.image {
        clear: both;
    }

    .ui.vertical.stripe p {
        font-size: 1.33em;
    }

    .ui.vertical.stripe .horizontal.divider {
        margin: 3em 0em;
    }

    .quote.stripe.segment {
        padding: 0em;
    }

    .quote.stripe.segment .grid .column {
        padding-top: 5em;
        padding-bottom: 5em;
    }

    .footer.segment {
        padding: 5em 0em;
    }

    .secondary.pointing.menu .toc.item {
        display: none;
    }

    @media only screen and (max-width: 700px) {
        .ui.fixed.menu {
            display: none !important;
        }

        .secondary.pointing.menu .item,
        .secondary.pointing.menu .menu {
            display: none;
        }

        .secondary.pointing.menu .toc.item {
            display: block;
        }

        .masthead.segment {
            min-height: 350px;
        }

        .masthead h1.ui.header {
            font-size: 2em;
            margin-top: 1.5em;
        }

        .masthead h2 {
            margin-top: 0.5em;
            font-size: 1.5em;
        }
    }


    </style>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    %{--<asset:javascript src="semantic/visibility.js"/>--}%
    %{--<asset:javascript src="semantic/sidebar.js"/>--}%
    %{--<asset:javascript src="semantic/transition.js"/>--}%
    %{--<asset:javascript src="semantic/modal.js"/>--}%
    %{--<asset:javascript src="semantic/dropdown.js"/>--}%
    %{--<asset:javascript src="semantic/dimmer.js"/>--}%
    <asset:javascript src="semantic/semantic.js"/>

    <script>

        $(document)
                .ready(function () {

                    // fix menu when passed
                    $('.masthead')
                            .visibility({
                                once: false,
                                onBottomPassed: function () {
                                    $('.fixed.menu').transition('fade in');
                                },
                                onBottomPassedReverse: function () {
                                    $('.fixed.menu').transition('fade out');
                                }
                            })
                    ;

                    // create sidebar and attach to menu open
                    $('.ui.sidebar')
                            .sidebar('attach events', '.toc.item')
                    ;

                });
        $(document).on('click', ".login", function () {
            $('.ui.modal').modal('show')
        })
        ;
    </script>
</head>

<body>

<!-- Following Menu -->
<div class="ui large top fixed hidden menu">
    <div class="ui container">
        <a class="active item">Home</a>
        <a class="item">Work</a>
        <a class="item">Company</a>
        <a class="item">Careers</a>

        <div class="right menu">
            <div class="item">
                <a class="ui button login">Log in</a>
            </div>

            <div class="item">
                <a class="ui primary button">Sign Up</a>
            </div>
        </div>
    </div>
</div>

<!-- Sidebar Menu -->
<div class="ui vertical inverted sidebar menu">
    <a class="active item">Home</a>
    <a class="item">Work</a>
    <a class="item">Company</a>
    <a class="item">Careers</a>
    <a class="item">Login</a>
    <a class="item">Signup</a>
</div>


<!-- Page Contents -->
<div class="pusher">
    <div class="ui inverted vertical masthead center aligned segment"
         style="background-image: url('/assets/semantic/background/8.jpg');background-repeat: no-repeat;min-height: 600px;
         background-size: 100% 100%;">

        <div class="ui container">
            <div class="ui large secondary inverted pointing menu" style="border-width:0px !important; ">
                <a class="toc item">
                    <i class="sidebar icon"></i>
                </a>
                <a class="active item">Home</a>
                <a class="item">Work</a>
                <a class="item">Company</a>
                <a class="item">Careers</a>

                <div class="right item">
                    <a class="ui inverted button login">Log in</a>
                    <a class="ui inverted button">Sign Up</a>
                </div>
            </div>
        </div>

        <div class="ui text container">
            <h1 class="ui header" style="margin-top: 130px !important;">
                Imagine-a-Company
            </h1>

            <h2 style="color: black">Do whatever you want when you want to.</h2>

            <div class="ui huge primary button">Get Started <i class="right arrow icon"></i></div>
        </div>

    </div>

    <div class="ui vertical stripe segment">
        <div class="ui middle aligned stackable grid container">
            <div class="row">
                <div class="eight wide column">
                    <h3 class="ui header">We Help Companies and Companions</h3>

                    <p>We can give your company superpowers to do things that they never thought possible. Let us delight your customers and empower your needs...through pure data analytics.</p>

                    <h3 class="ui header">We Make Bananas That Can Dance</h3>

                    <p>Yes that's right, you thought it was the stuff of dreams, but even bananas can be bioengineered.</p>
                </div>

                <div class="six wide right floated column">
                    <asset:image src="semantic/wireframe/white-image.png" class="ui large bordered rounded image"/>
                </div>
            </div>

            <div class="row">
                <div class="center aligned column">
                    <a class="ui huge button">Check Them Out</a>
                </div>
            </div>
        </div>
    </div>


    <div class="ui vertical stripe quote segment">
        <div class="ui equal width stackable internally celled grid">
            <div class="center aligned row">
                <div class="column">
                    <h3>"What a Company"</h3>

                    <p>That is what they all say about us</p>
                </div>

                <div class="column">
                    <h3>"I shouldn't have gone with their competitor."</h3>

                    <p>
                        <asset:image src="semantic/avatar/nan.jpg" class="ui avatar image"/>
                        <b>Nan</b> Chief Fun Officer Acme Toys
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="ui vertical stripe segment">
        <div class="ui text container">
            <h3 class="ui header">Breaking The Grid, Grabs Your Attention</h3>

            <p>Instead of focusing on content creation and hard work, we have learned how to master the art of doing nothing by providing massive amounts of whitespace and generic content that can seem massive, monolithic and worth your attention.</p>
            <a class="ui large button">Read More</a>
            <h4 class="ui horizontal header divider">
                <a href="#">Case Studies</a>
            </h4>

            <h3 class="ui header">Did We Tell You About Our Bananas?</h3>

            <p>Yes I know you probably disregarded the earlier boasts as non-sequitur filler content, but its really true. It took years of gene splicing and combinatory DNA research, but our bananas can really dance.</p>
            <a class="ui large button">I'm Still Quite Interested</a>
        </div>
    </div>


    <div class="ui inverted vertical footer segment">
        <div class="ui container">
            <div class="ui stackable inverted divided equal height stackable grid">
                <div class="three wide column">
                    <h4 class="ui inverted header">About</h4>

                    <div class="ui inverted link list">
                        <a href="#" class="item">Sitemap</a>
                        <a href="#" class="item">Contact Us</a>
                        <a href="#" class="item">Religious Ceremonies</a>
                        <a href="#" class="item">Gazebo Plans</a>
                    </div>
                </div>

                <div class="three wide column">
                    <h4 class="ui inverted header">Services</h4>

                    <div class="ui inverted link list">
                        <a href="#" class="item">Banana Pre-Order</a>
                        <a href="#" class="item">DNA FAQ</a>
                        <a href="#" class="item">How To Access</a>
                        <a href="#" class="item">Favorite X-Men</a>
                    </div>
                </div>

                <div class="seven wide column">
                    <h4 class="ui inverted header">Footer Header</h4>

                    <p>Extra space for a call to action inside the footer that could help re-engage users.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="ui modal">
    <i class="close icon" style="top: -0.5rem;right: -0.5rem;color: black !important;"></i>

    <div class="header">
        Modal Title
    </div>

    <div class="image content">
        <div class="image">
            An image can appear on left or an icon
        </div>

        <div class="description">
            A description can appear on the right
        </div>
    </div>

    <div class="actions">
        <div class="ui button">Cancel</div>

        <div class="ui button">OK</div>
    </div>
</div>

</body>

</html>