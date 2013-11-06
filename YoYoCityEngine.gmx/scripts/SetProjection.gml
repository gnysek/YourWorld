with(oCamera)
{
    if global.Mode==mode_edit
    {
        d3d_set_projection(CameraX,CameraY,CameraZ,CameraX+cos(dir*pi/180),CameraY-sin(dir*pi/180),CameraZ+tan(zdir*pi/180),0,0,-1);    
    }
    if global.Mode==mode_play
    {
        d3d_set_projection_ext(CameraX,CameraY,CameraZ,  CameraX,CameraY,1024, 0,1,0,  FOV, AspectRatio,  32, 20000.0);
    }
}