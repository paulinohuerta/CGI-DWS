#!/usr/bin/perl
    use CGI;
    use utf8;

    my $q = new CGI;

    print $q->header;

    print $q->start_html(-title => 'Formulario');
    print $q->start_form;
    print $q->start_form(
        -name    => 'main_form',
        -method  => 'GET',
        -enctype => &CGI::URL_ENCODED,
        -onsubmit => 'return javascript:validation_function()',
        -action => '/where/your/form/gets/sent', # Defaults to 
                                                 # the current program
    );
    print $q->textfield(
        -name      => 'Nombre',
        -value     => 'nombre',
        -size      => 20,
        -maxlength => 30,
    );

    print $q->h3('¿Cuáles son los lenguajes que conoces?');
    print $q->checkbox_group(
        -name     => 'Lenguaje',
        -values   => ['Java', 'Perl', 'Python', 'Unity'],
        -defaults => ['Java', 'Unity'],
        -columns  => 2,
        -rows     => 2,
    );

    print $q->h3('¿Cuál es tu favorito?');
    print $q->radio_group(
        -name     => 'Favorito',
        -values   => ['Java', 'Perl', 'Python', 'Unity'],
        -defaults => 'Java',
        -columns  => 2,
        -rows     => 2,
    );
    print $q->submit(
        -name     => 'submit_form',
        -value    => 'Enviar',
        -onsubmit => 'javascript: validate_form()',
    );
    print $q->end_form;
