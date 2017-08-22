namespace FirstExample;
uses
  rtl,
  GlHelper,
  GLFW,
  OpenGl;


type

  Program = class
  private 
  
  public

    class method Main(args: array of String): Int32;
    begin
         Asset.initialize('D:\Test');
       
            if  glfwInit() = 0 then exit;
          
            var Window := glfwCreateWindow(640, 480, "Hello World", nil, nil);

/* Make the window's context current */
            glfwMakeContextCurrent(window);
            /* Initialize the OpenGl */
            GL.InitGL(  method (value: ^Ansichar) : ^Void;
            begin
               exit Pointer(glfwGetProcAddress(value));
            end, false);


            var APP := new GLAPP();
            APP.initialize;

    /* Loop until the user closes the window */
            while glfwWindowShouldClose(window) = 0 do
            begin
        /* Render here */

                var width, height : integer;
                glfwGetFramebufferSize(window, var width, var height);
                APP.Update(width, Height);

        /* Swap front and back buffers */
                glfwSwapBuffers(window);

        /* Poll for and process events */
                glfwPollEvents();
            end;

            glfwTerminate();

      result := 0;

    end;

  end;

end.