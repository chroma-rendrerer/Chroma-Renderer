#include <iostream>
#include <stdio.h>

#include <chroma/main/Log.h>
#include <chroma/main/Application.h>

int main(int argc, char const* argv[]) 
{
    Chroma::Log::Init();
    Chroma::Application* app = new Chroma::Application();

    app->Run();
    delete app;
    return 0;
}