<?php

namespace Barya\Dashboard;

use Barya\Dashboard\Controller\AbstractController;
use Barya\Dashboard\Controller\ControllerInterface;
use Barya\Dashboard\Http\RequestInterface;
use Barya\Dashboard\View\ViewInterface;
use Barya\Dashboard\Http\Exception as HttpException;

/**
 * Class App
 * @package Barya\Dashboard
 * Simple Facade for this applications
 * Just to build all components together
 */
final class App
{
    /**
     * @var AbstractController
     */
    private $controller;

    /**
     * @var RequestInterface
     */
    private $request;

    /**
     * App constructor.
     * @param RequestInterface $request
     */
    public function __construct(RequestInterface $request) {
        $this->request = $request;
    }

    /**
     * @param ControllerInterface $controller
     * @return $this
     */
    public function use(ControllerInterface $controller) {
        $this->controller = $controller;
        $this->controller->setRequest($this->request);
        return $this;
    }

    public function run() {
        $action = 'indexAction';
        if (!method_exists($this->controller, $action)) {
            throw new HttpException('Not Found', 404);
        }

        $view = $this->controller->$action();
        if ($view instanceof ViewInterface) {
            echo $view->render();
            die;
        }

        throw new \Exception('Application Exception');
    }

    public static function showErrorPage($httpCode = 500, $message = '', $trace = '') {
        http_response_code($httpCode);
        $view = self::view($httpCode, [
                'message' => $message,
                'trace' => str_replace(PHP_EOL, '<br>', $trace)
            ]
        );
        echo $view->render();
        die;
    }

    public static function view(string $template, array $data = []) {
        $view = new View\View(VIEW_PATH, $template);
        foreach ($data as $key => $value) {
            $view[$key] = $value;
        }
        return $view;
    }
}
