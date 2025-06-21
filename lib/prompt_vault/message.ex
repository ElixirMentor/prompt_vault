defmodule PromptVault.Message do
  @moduledoc """
  Behaviour for message types in PromptVault.

  All message types must implement this behaviour to provide consistent
  access to role, raw content, rendered output, and template engine information.
  """

  @type t :: term()

  @doc """
  Returns the role of the message as an atom.
  """
  @callback role(t) :: atom

  @doc """
  Returns the raw content of the message.
  """
  @callback raw(t) :: any

  @doc """
  Renders the message with the given assigns, returning iodata.
  """
  @callback rendered(t, assigns :: map) :: iodata

  @doc """
  Returns the template engine used by this message, or nil if none.
  """
  @callback template_engine(t) :: atom | nil
end
