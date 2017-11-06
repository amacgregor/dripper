defmodule Dripper.Config do
  @moduledoc false
  defstruct auth: nil, dir: nil, max: nil, ignore: [], oldest_first: false, subdomain: nil
end
