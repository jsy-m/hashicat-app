#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a modern web application page with images and animations.

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
            text-align: center;
        }
        .container {
            max-width: 800px;
            padding: 2rem;
            background-color: #ffffff;
            border-radius: 1rem;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        
        /* 텍스트 흔들기 애니메이션 */
        .animated-text {
            display: inline-block;
            animation: shake 1s infinite;
            font-size: 3rem;
            font-weight: 700;
            color: #007bff;
        }
        @keyframes shake {
            0% { transform: translateX(0); }
            20% { transform: translateX(-5px) rotate(2deg); }
            40% { transform: translateX(5px) rotate(-2deg); }
            60% { transform: translateX(-5px) rotate(2deg); }
            80% { transform: translateX(5px) rotate(-2deg); }
            100% { transform: translateX(0); }
        }
        
        /* 이모지 통통 튀기기 애니메이션 */
        .animated-emoji {
            animation: bounce 2s infinite;
            display: inline-block;
            margin: 0 10px;
        }
        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-20px);
            }
            60% {
                transform: translateY(-10px);
            }
        }
        
        /* 이미지 부드럽게 확대/축소 애니메이션 */
        .animated-image {
            max-width: 100%;
            height: auto;
            border-radius: 0.5rem;
            margin-bottom: 2rem;
            animation: pulse 3s infinite ease-in-out;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100%