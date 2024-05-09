<?=$this->extend('layout')?>

<?=$this->section('mainbody')?>
    <!-- Header Start -->
    <?php echo $scriptTag; ?>
    <div class="container-fluid bg-light my-6 mt-0" id="home">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 py-6 pb-0 pt-lg-0">
                    <h3 class="text-primary mb-3">I'm</h3>
                    <!-- Read from database -->
                    <h1 class="display-3 mb-3"><?=$name?></h1>
                    <h2 class="typed-text-output d-inline"></h2>
                    <div class="typed-text d-none"><?=$skills?></div>
                    <div class="d-flex align-items-center pt-5">
                        <a href="<?=base_url('documents/CV.pdf')?>" class="btn btn-primary py-3 px-4 me-5">Download CV</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <img class="img-fluid" src="<?=base_url('img/profile.png')?>" alt="Images of <?=$name?>" style="max-width: 104%;">
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->

    <!-- About Start -->
    <div class="container-xxl py-6" id="about">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="d-flex align-items-center mb-5">
                        <div class="years flex-shrink-0 text-center me-4">
                            <h1 class="display-1 mb-0">4</h1>
                            <h5 class="mb-0">Years</h5>
                        </div>
                        <h3 class="lh-base mb-0">of experience as a web developer</h3>
                    </div>
                    <p class="mb-4"><?=$introduction?></p>
                    <p class="mb-3"><i class="fa-solid fa-book text-primary me-3"></i>Student of Informatics from Muhammadiyah University of Sukabumi</p>
                    <p class="mb-3"><i class="fa-solid fa-globe text-primary me-3"></i>Mainly works in Web Development field, especially using JavaScript</p>
                    <p class="mb-3"><i class="fa-solid fa-heart text-primary me-3"></i>Interested in scalable frontends and distributed system design.</p>
                    <p class="mb-3"><i class="fa-solid fa-bolt text-primary me-3"></i>Actively exploring and trying out new web technologies</p>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="d-flex align-items-center mb-3">
                        <h5 class="border-end pe-3 me-3 mb-0">Projects Completed</h5>
                        <h2 class="text-primary fw-bold mb-0" data-toggle="counter-up">7</h2>
                    </div>
                    <p class="mb-0">I have built 6 projects on Front-end field, starting on 2020 building a daily dashboard of COVID-19 with React.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Expertise Start -->
    <div class="container-xxl py-6 pb-5" id="skill">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="display-5 mb-5">Tech Stack & Experience</h1>
                    <p class="mb-4">I've mastered a comprehensive set of tech stacks, ensuring seamless development across various platforms.</p>
                    <h3 class="mb-4">Tech Stack</h3>
                    <div class="row align-items-center">
                        <?php foreach ($stacks as $tech_stack): ?>
                            <div class="col-md-6">
                                <div class="skill mb-4">
                                    <div class="d-flex justify-content-between">
                                        <h6 class="font-weight-bold"><?= $tech_stack['tech_name'] ?></h6>
                                        <h6 class="font-weight-bold"><?= $tech_stack['percentage'] ?>%</h6>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" aria-valuenow="<?= $tech_stack['percentage'] ?>" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <ul class="nav nav-pills rounded border border-2 border-primary mb-5">
                        <li class="nav-item w-50">
                            <button class="nav-link w-100 py-3 fs-5 active" data-bs-toggle="pill" href="#tab-1">Experience</button>
                        </li>
                        <li class="nav-item w-50">
                            <button class="nav-link w-100 py-3 fs-5" data-bs-toggle="pill" href="#tab-2">Education</button>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row gy-5 gx-4">
                                <?php foreach ($experience as $exp): ?>
                                    <div class="col-sm-6">
                                        <h5><?= $exp['name'] ?></h5>
                                        <hr class="text-primary my-2">
                                        <p class="text-primary mb-1"><?= $exp['start_month'] ?> <?= $exp['start_year'] ?> - <?= $exp['end_month'] ?> <?= $exp['end_year'] ?></p>
                                        <h6 class="mb-0"><?= $exp['workplace'] ?></h6>
                                        <h6 class="mb-0"><?= $exp['working_type'] ?></h6>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row gy-5 gx-4">
                            <?php foreach ($education as $edu): ?>
                                <div class="col-sm-6">
                                    <h5><?= $edu['school_name'] ?></h5>
                                    <hr class="text-primary my-2">
                                    <p class="text-primary mb-1"><?= $edu['year_start'] ?> - <?= $edu['year_end'] ?></p>
                                    <h6 class="mb-0"><?= $edu['department'] ?></h6>
                                </div>
                            <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Expertise End -->

    <!-- Projects Start -->
    <div class="container-xxl py-6 pt-5" id="project">
        <div class="container">
            <div class="row g-5 mb-5 align-items-center wow fadeInUp" data-wow-delay="0.1s">
                <div class="col-lg-6">
                    <h1 class="display-5 mb-0">My Projects</h1>
                </div>
                <div class="col-lg-6 text-lg-end">
                    <ul class="list-inline mx-n3 mb-0" id="portfolio-flters">
                        <li class="mx-3 active" data-filter="*">All Projects</li>
                        <li class="mx-3" data-filter=".front-end">Front-end</li>
                        <li class="mx-3" data-filter=".back-end">Back-end</li>
                    </ul>
                </div>
            </div>
            <div class="row g-4 portfolio-container wow fadeInUp" data-wow-delay="0.1s">
                <?php foreach ($projects as $project): ?>
                    <div class="col-lg-4 col-md-6 portfolio-item <?= $project['type'] ?>">
                        <div class="portfolio-img rounded overflow-hidden">
                            <img class="img-fluid" src="<?=base_url('img/projects/' . $project['filename'])?>.jpg" alt="">
                            <div class="portfolio-btn">
                                <a class="btn btn-lg-square btn-outline-secondary border-2 mx-1" href="<?=base_url('img/projects/' . $project['filename'])?>.jpg" data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                                <a class="btn btn-lg-square btn-outline-secondary border-2 mx-1" href="https://github.com/khw15/<?= $project['filename'] ?>" target="_blank" title="More Details"><i class="fa fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
    <!-- Projects End -->

    <!-- Contact Start -->
    <div class="container-xxl pb-0" id="contact">
        <div class="container py-5">
            <div class="row g-5 mb-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="col-lg-6">
                    <h1 class="display-5 mb-0">Get in Touch</h1>
                </div>
                <div class="col-lg-6 text-lg-end">
                    <a class="btn btn-primary py-3 px-5" href="">Say Hello</a>
                </div>
            </div>
            <div class="row g-5">
                <div class="col-lg-5 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <p class="mb-2">Call me:</p>
                    <h3 class="fw-bold"><a href="tel:<?=$phone?>"><?=$phone?></a></h3>
                    <hr class="w-100">
                    <p class="mb-2">Mail me:</p>
                    <h3 class="fw-bold"><a href="mailto:<?=$email?>"><?=$email?></a></h3>
                    <hr class="w-100">
                    <p class="mb-2">Follow me:</p>
                    <div class="d-flex pt-2">
                        <?php foreach ($socials as $social): ?>
                            <a href="<?= $social['link'] ?>" class="btn btn-square btn-primary me-2"><i class="fab fa-<?= $social['type'] ?>"></i></a>
                        <?php endforeach; ?>
                    </div>
                </div>
                <div class="col-lg-7 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <!-- Create the contact form active -->
                    <form id="contact-form" method="post" action="/post-contacts" onsubmit="return validateForm()">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Your Name" autocomplete="no" required>
                                    <label for="name">Your Name</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" autocomplete="no" required>
                                    <label for="email">Your Email</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" autocomplete="no" required>
                                    <label for="subject">Subject</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea class="form-control" id="message" placeholder="Message" name="message" style="height: 150px;" autocomplete="no" required></textarea>
                                    <label for="message">Message</label>
                                </div>
                            </div>
                            <!-- reCAPTCHA Widget -->
                            <div class="col-12">
                                <?php echo $widgetTag; ?>
                                <p id="captchaError" style="color: red; display: none; margin-top: 1rem">Please complete the CAPTCHA</p>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary py-3 px-4">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
<?=$this->endSection('mainbody')?>