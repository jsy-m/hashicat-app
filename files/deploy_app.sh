#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a modern, styled web application page.

cat << EOM > /var/www/html/index.html
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello, ${PREFIX} World!</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', 'Roboto', 'Helvetica Neue', Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #343a40;
        }
        .card {
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: transform 0.3s ease-in-out;
            border: none;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card-img-top {
            border-top-left-radius: 0.25rem;
            border-top-right-radius: 0.25rem;
            object-fit: cover;
            width: 100%;
            height: 300px;
        }
        .placeholder-img {
            background-color: #e9ecef;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #6c757d;
            font-size: 1.5rem;
        }
        .card-title {
            font-weight: 600;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
    </style>
</head>
<body>

<div class="container text-center">
    <div class="card mx-auto" style="max-width: 600px;">
        <img class="card-img-top placeholder-img" src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}" alt="Placeholder Image">
        <div class="card-body">
            <h1 class="card-title display-4">Hello, ${PREFIX}'s app!</h1>
            <p class="card-text lead">It's a modern and elegant Skeleton World. Enjoy your customized page!</p>
            <a href="#" class="btn btn-primary mt-3">Learn More</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
EOM

echo "Script complete. A modern web page has been deployed."