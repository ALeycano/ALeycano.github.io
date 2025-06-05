        function getPHTime() {
            const now = new Date();
            const utc = now.getTime() + now.getTimezoneOffset() * 60000;
            const manilaOffset = 8 * 60 * 60 * 1000;
            return new Date(utc + manilaOffset);
        }

        function updateCountdown() {
            const current = getPHTime();
            const year = current.getFullYear();

            let christmas = new Date(Date.UTC(year, 11, 25, 0, 0, 0));
            christmas = new Date(christmas.getTime() + 8 * 60 * 60 * 1000);

            if (current > christmas) {
                christmas = new Date(Date.UTC(year + 1, 11, 25, 0, 0, 0));
                christmas = new Date(christmas.getTime() + 8 * 60 * 60 * 1000);
            }

            let diff = (christmas.getTime() - current.getTime()) / 1000;

            const days = Math.floor(diff / (60 * 60 * 24));
            diff -= days * 60 * 60 * 24;

            const hours = Math.floor(diff / (60 * 60));
            diff -= hours * 60 * 60;

            const minutes = Math.floor(diff / 60);
            const seconds = Math.floor(diff % 60);

            document.getElementById("days").innerHTML = days;
            document.getElementById("hours").innerHTML = hours;
            document.getElementById("minutes").innerHTML = minutes;
            document.getElementById("seconds").innerHTML = seconds;
        }

        function updateCountdownToSeptember() {
            const current = getPHTime();
            const year = current.getFullYear();

            let september = new Date(Date.UTC(year, 8, 1, 0, 0, 0)); 
            september = new Date(september.getTime() + 8 * 60 * 60 * 1000);

            if (current > september) {
                september = new Date(Date.UTC(year + 1, 8, 1, 0, 0, 0));
                september = new Date(september.getTime() + 8 * 60 * 60 * 1000);
            }

            let diff = (september.getTime() - current.getTime()) / 1000;

            const days = Math.floor(diff / (60 * 60 * 24));
            diff -= days * 60 * 60 * 24;

            const hours = Math.floor(diff / (60 * 60));
            diff -= hours * 60 * 60;

            const minutes = Math.floor(diff / 60);
            const seconds = Math.floor(diff % 60);

            document.getElementById("days2").innerHTML = days;
            document.getElementById("hours2").innerHTML = hours;
            document.getElementById("minutes2").innerHTML = minutes;
            document.getElementById("seconds2").innerHTML = seconds;
        }

        updateCountdown();
        updateCountdownToSeptember();
        setInterval(() => {
            updateCountdown();
            updateCountdownToSeptember();
        }, 1000);