<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test View</title>
</head>
<body>
    <h1>Content will be added below</h1>
    <h3 id="content-from-event"></h3>

    <script src="{{ asset('js/libs/jquery-1.11.1.min.js') }}"></script>
    <script src="{{ asset('js/libs/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/libs/pusher.min.js') }}"></script>
    <script>
        jQuery(document).ready(function() {

            function displayEventData(data) {

                var contentContainer = $("#content-from-event");

                contentContainer.append(data.response + "<br>");

                console.log(data);

            }

            var pusher = new Pusher('49e6179dbfbfe70eb2ab', { encrypted: true });

            var channel = pusher.subscribe('ppes.student-evaluation-channel');

            channel.bind('ppes.student-evaluation-expired', displayEventData);

        });
    </script>
</body>
</html>

