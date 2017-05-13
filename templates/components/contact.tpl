<section id="{$sections[5]['domid']}" class="container-fluid contact sec" style="background-image: url('assets/img/bg-bottom.png')">
    <div class="container">
        <div class="row">
            <div class="sec__content col-sm-6 col-sm-offset-3">
                <h1 class="sec__title">{$sections[5]['title']}</h1>
                <p>{$sections[5]['content']}</p>
            </div>
            <address class="col-sm-5 col-md-4 col-md-offset-1 col-sm-push-6 address">
                <p class="address__cat">Address</p>
                <p class="address__data">123 City name, Street, City, Country</p>
                <p class="address__cat">Email</p>
                <p class="address__data">cahee@domain.com</p>
                <p class="address__cat">Phone</p>
                <p class="address__data">+012 345 6789</p>
            </address>
            <div class="col-sm-pull-5 col-sm-6 col-md-5">
                <form class="form-horizontal">
                    <div class="input-holder">
                        <label for="input-name"><span class="hidden">Your name...</span></label>
                        <input id="input-name" class="col-xs-12" type="text" name="name" placeholder="Your name...">
                    </div>
                    <div class="input-holder">
                        <label for="input-email"><span class="hidden">Your email...</span></label>
                        <input id="input-email" class="col-xs-12" type="email" placeholder="Your email...">
                    </div>
                    <div class="input-holder">
                        <label for="input-phone"><span class="hidden">Your name...</span></label>
                        <input id="input-phone" class="col-xs-12" type="text" placeholder="Your phone number...">
                    </div>
                    <label for="input-message"><span class="hidden">Your message...</span></label>
                    <textarea id="input-message" class="col-xs-12" placeholder="Your message..." rows="8"></textarea>
                </form>
            </div>
        </div>
    </div>
</section>