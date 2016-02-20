<?php
function to_obj($input)
{
    return json_decode(json_encode($input));
}

function debug($data,$return=false)
{
    if($return)
    {
        return '<pre>'.print_r($data,1).'</pre>';
    }
    echo '<pre>'.print_r($data,1).'</pre>';
}
function MarkDown($input)
{
    $ciconia = new \Ciconia\Ciconia();
    $content = $ciconia->render($input);
    return $content;
}
function view($template,$data,$settings=array('autoescape'=>false,'debug'=>false))
{
    $loader = new Twig_Loader_Filesystem('./');
    $twig = new Twig_Environment($loader, $settings);

    return $twig->render($template, $data);
}

function parse_file($file, $template)
{
    global $that;
    /**/
    $page = new FrontMatter($file);
    #$template = file_get_contents($template);
    $data = array(
        'title'       => $page->fetch('title'),
        'content'     => MarkDown($page->fetch('content')),
        'author'      => $page->fetch('author'),
        'date'        => $page->fetch('date'),
        'description' => ($page->fetch('description') == '' ? '' : $page->fetch('description'))
    );
    $data['base']  = 'http://'.$_SERVER['SERVER_NAME'].$that->settings->root;
    $data['theme'] = $data['base'].'/themes/'.$that->settings->theme;
    $data['css']   = $data['theme'].'/css';
    $data['js']    = $data['theme'].'/js';
    echo view($template, $data);
    /**/
}

function show_news($folder='posts',$template='templates/show_news.tpl')
{
    global $that;
    #$m = new Mustache_Engine;
    $files = glob("$folder/*.md");
    $html = '';
    foreach($files as $file)
    {
        $page  = new FrontMatter($file);
        if($page->fetch('route') == '') {
            $route = $that->uri->segment(1,'').'/'.substr($file, strlen($folder)+1, -3);
        } else {
            $route = $page->fetch('route');
        }
        $data[] = array(
            'route'       => $route,
            'author'      => $page->fetch('author'),
            'content'     => MarkDown($page->fetch('content')),
            'date'        => $page->fetch('date'),
            'title'       => ($page->fetch('title') != '' ? $page->fetch('title') : $route),
            'description' => ($page->fetch('description') == '' ? '' : $page->fetch('description')),
        );
    }
    /**/
    function date_compare($a, $b)
    {
        $t1 = strtotime($a['date']);
        $t2 = strtotime($b['date']);
        return $t1 - $t2;
    }
    usort($data, 'date_compare');
    $data = array_reverse($data);
    /**/

    /** /
    $template = file_get_contents('templates/show_news.tpl');
    /**/
    $data['posts'] = $data;
    $data['base']  = 'http://'.$_SERVER['SERVER_NAME'].$that->settings->root;
    $data['theme'] = $data['base'].'/themes/'.$that->settings->theme;
    $data['css']   = $data['theme'].'/css';
    $data['js']    = $data['theme'].'/js';
    echo view($template, $data);
    /** /
    return $m->render($template, $data);
    return $html;
    /**/
}
