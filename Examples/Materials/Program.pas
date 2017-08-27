namespace Materials;

uses  rtl,
RemObjects.Elements.System,
GlHelper,
GLFW,
OpenGl;

type
  Program = class
  public

    class method Main(args: array of String): Int32;
    begin
      var fticks : integer;
      var ftotalticks :double;
      fticks := 20;
      ftotalticks := 0;
      try
     // Please change these path to the Basepath of your Installatio
      // eg D:\ElemetsGl\Examples
        Asset.initialize('D:\Test');

        if  glfwInit() = 0 then exit;

        var Window := glfwCreateWindow(640, 480, "Hello Materials", nil, nil);

/* Make the window's context current */
        glfwMakeContextCurrent(window);
            /* Initialize the OpenGl */
        GL.InitGL(  method (value: ^Ansichar) : ^Void;
        begin
          exit ^Void(glfwGetProcAddress(value));
        end, true);

//writeLn('Before APP');
        var APP := new GLAPP();
        APP.initialize;
 //         writeLn('After APP');

        glfwSwapInterval(5);

    /* Loop until the user closes the window */
        while glfwWindowShouldClose(window) = 0 do
        begin
        /* Render here */

          var width, height : integer;
          glfwGetFramebufferSize(window, var width, var height);
          ftotalticks := glfwGetTime;//rValue;
          ftotalticks := ftotalticks - Math.Floor(ftotalticks);
          APP.Update(width, Height, fticks, ftotalticks);

        /* Swap front and back buffers */
          glfwSwapBuffers(window);

        /* Poll for and process events */
          glfwPollEvents();
        end;

        glfwTerminate();

        result := 0;
      except
        on e : Exception do writeLn(e.message);
      end;
    end;

  end;

end.