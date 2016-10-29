#!/usr/bin/perl -w
use CGI;
my $q = new CGI;


if(!$q->param) {
    print $q->header(-charset => 'utf-8');
    print $q->start_html(-title => 'Formulario');
    print $q->start_form(
        -name    => 'main_form',
        -method  => 'GET',
        -enctype => &CGI::URL_ENCODED,
        -onsubmit => 'return javascript:validation_function()',
        # -action => '' # Defaults to  the current program
    );
    print $q->textfield(
        -name      => 'Nombre',
        -value     => 'nombre',
        -size      => 20,
        -maxlength => 30,
    );
    print $q->p('¿Cuáles son los lenguajes que conoces?');
    print $q->checkbox_group(
        -name     => 'Lenguaje',
        -values   => ['Java', 'Perl', 'Python', 'Unity'],
        -defaults => ['Java', 'Unity'],
        -columns  => 2,
        -rows     => 2,
    );
    print $q->p('¿Cuál es tu favorito?');
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
}
else {
   # process fields form and then sending results
    print $q->header(-charset => 'utf-8');
    print $q->start_html(-title => 'Formulario');
    print $q->h3('Por desarrollar ....');
}
print $q->end_html;
