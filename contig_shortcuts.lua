function init(plugin)
  print("Aseprite is initializing contiguous shortcuts")

  --
  plugin:newCommand{
    id="PaintBucketContiguous",
    title="Paint Bucket (Contiguous)",
    group="edit_insert",
    onclick=function()
      app.activeTool = "paint_bucket"
	  app.preferences.tool("paint_bucket").contiguous = true
    end
  }
  plugin:newCommand{
    id="PaintBucketNonContiguous",
    title="Paint Bucket (Non-Contiguous)",
    group="edit_insert",
    onclick=function()
      app.activeTool = "paint_bucket"
	  app.preferences.tool("paint_bucket").contiguous = false
    end
  }
end

function exit(plugin)
  print("Aseprite is closing contiguous shortcuts")
end