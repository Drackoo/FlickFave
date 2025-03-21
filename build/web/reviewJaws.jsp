<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Review Film - Jaws</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="Styles/DesignReviewFilm.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <nav>
        <img src="Images/logo.png" alt="Logo" />
        <a href="indexPengguna.jsp">MOVIES</a>
        <a href="myReview.jsp">MY REVIEW</a>
        <a href="watchlist.jsp">WATCHLIST</a>
        <a href="profile.jsp">PROFILE</a>
        <form method="get" action="signin" class="logout-form">
            <input type="hidden" name="action" value="logout">
            <button type="submit" class="logout-button">LOGOUT</button>
        </form>
    </nav>

    <div class="container" id="review-section">
        <div class="poster">
            <img src="Images/jaws.jpg" alt="Jaws Poster">
        </div>

        <div class="review-form">
            <h1 class="section-title">Review Film: Jaws</h1>
            <form action="submitReview" method="POST"> <!-- Submit ke servlet -->
                <input type="hidden" name="filmId" value="3"> <!-- ID film untuk Jaws -->
                
                <div class="rating">
                    <label for="rating">Rating (1-10):</label>
                    <input type="number" id="rating" name="rating" min="1" max="10" required>
                </div>

                <label for="pengirim">Pengirim:</label>
                <input type="text" id="pengirim" name="pengirim" class="input-field" placeholder="Your Name" required><br>

                <textarea name="review" class="review-textarea" placeholder="Write your review here..." required></textarea>

                <button type="submit" class="submit-btn">Submit Review</button>
            </form>
        </div>
    </div>
</body>
</html>
