<file_map>
/Users/mhostetler/Source/ElixirMentor/lax
├── assets
│   ├── css
│   │   └── app.css
│   ├── js
│   │   ├── hooks
│   │   │   ├── ControlTextarea.js
│   │   │   ├── ResizeContainer.js
│   │   │   └── SetTimeZoneValue.js
│   │   └── app.js
│   └── tailwind.config.js
├── config
│   ├── config.exs
│   ├── dev.exs
│   ├── prod.exs
│   ├── runtime.exs
│   └── test.exs
├── lib
│   ├── lax
│   │   ├── channels
│   │   │   ├── channel_user.ex
│   │   │   ├── channel.ex
│   │   │   └── default_channel.ex
│   │   ├── messages
│   │   │   ├── link_preview_pub_sub.ex
│   │   │   ├── link_preview.ex
│   │   │   └── message.ex
│   │   ├── users
│   │   │   ├── colors.ex
│   │   │   ├── membership.ex
│   │   │   ├── user_notifier.ex
│   │   │   ├── user_token.ex
│   │   │   └── user.ex
│   │   ├── application.ex
│   │   ├── channels.ex
│   │   ├── chat.ex
│   │   ├── indicators.ex
│   │   ├── mailer.ex
│   │   ├── messages.ex
│   │   ├── release.ex
│   │   ├── repo.ex
│   │   └── users.ex
│   ├── lax_web
│   │   ├── components
│   │   │   ├── layouts
│   │   │   │   ├── app.html.heex
│   │   │   │   ├── chat.html.heex
│   │   │   │   └── root.html.heex
│   │   │   ├── layouts_swiftui
│   │   │   │   ├── app.swiftui.neex
│   │   │   │   └── root.swiftui.neex
│   │   │   ├── core_components.ex
│   │   │   ├── core_components.swiftui.ex
│   │   │   ├── layouts.ex
│   │   │   └── layouts.swiftui.ex
│   │   ├── controllers
│   │   │   ├── page_html
│   │   │   │   ├── home.html.heex
│   │   │   │   └── support.html.heex
│   │   │   ├── error_html.ex
│   │   │   ├── error_json.ex
│   │   │   ├── health_controller.ex
│   │   │   ├── page_controller.ex
│   │   │   ├── page_html.ex
│   │   │   └── user_session_controller.ex
│   │   ├── live
│   │   │   ├── chat_live
│   │   │   │   ├── channel_chat_component.ex
│   │   │   │   ├── channel_form_component.ex
│   │   │   │   ├── chat_components.ex
│   │   │   │   ├── chat_components.swiftui.ex
│   │   │   │   └── manage_channels_component.ex
│   │   │   ├── direct_message_live
│   │   │   │   ├── direct_message_components.ex
│   │   │   │   ├── direct_message_components.swiftui.ex
│   │   │   │   ├── new_direct_message_live.ex
│   │   │   │   └── new_direct_message_live.swiftui.ex
│   │   │   ├── user_live
│   │   │   │   ├── user_components.ex
│   │   │   │   └── user_components.swiftui.ex
│   │   │   ├── chat_live.ex
│   │   │   ├── chat_live.swiftui.ex
│   │   │   ├── direct_message_live.ex
│   │   │   ├── user_confirmation_instructions_live.ex
│   │   │   ├── user_confirmation_live.ex
│   │   │   ├── user_forgot_password_live.ex
│   │   │   ├── user_forgot_password_live.swiftui.ex
│   │   │   ├── user_login_live.ex
│   │   │   ├── user_login_live.swiftui.ex
│   │   │   ├── user_registration_live.ex
│   │   │   ├── user_registration_live.swiftui.ex
│   │   │   ├── user_reset_password_live.ex
│   │   │   ├── user_settings_live.ex
│   │   │   └── user_settings_live.swiftui.ex
│   │   ├── styles
│   │   │   └── app.swiftui.ex
│   │   ├── endpoint.ex
│   │   ├── gettext.ex
│   │   ├── presence.ex
│   │   ├── router.ex
│   │   ├── telemetry.ex
│   │   └── user_auth.ex
│   ├── lax_native.ex
│   ├── lax_web.ex
│   └── lax.ex
├── priv
│   ├── gettext
│   │   ├── en
│   │   │   └── LC_MESSAGES
│   │   │       └── errors.po
│   │   └── errors.pot
│   ├── repo
│   │   ├── migrations
│   │   │   ├── .formatter.exs
│   │   │   ├── 20240607212620_create_users_auth_tables.exs
│   │   │   ├── 20240608024632_create_channels.exs
│   │   │   ├── 20240609014931_alter_messages_timestamps_type.exs
│   │   │   ├── 20240609162305_alter_channels_users_modify_last_viewed_at.exs
│   │   │   ├── 20240801125212_alter_users_add_apns_device_token.exs
│   │   │   ├── 20240823131324_alter_users_add_deleted_at.exs
│   │   │   └── 20240827164445_create_link_previews.exs
│   │   └── seeds.exs
│   └── static
│       ├── images
│       │   ├── lax-app-store-qr.png
│       │   ├── logo-lax-512.png
│       │   └── logo.svg
│       ├── favicon.ico
│       └── robots.txt
├── test
│   ├── lax
│   │   └── users_test.exs
│   ├── lax_web
│   │   ├── controllers
│   │   │   ├── error_html_test.exs
│   │   │   ├── error_json_test.exs
│   │   │   └── user_session_controller_test.exs
│   │   ├── live
│   │   │   ├── user_confirmation_instructions_live_test.exs
│   │   │   ├── user_confirmation_live_test.exs
│   │   │   ├── user_forgot_password_live_test.exs
│   │   │   ├── user_login_live_test.exs
│   │   │   ├── user_registration_live_test.exs
│   │   │   ├── user_reset_password_live_test.exs
│   │   │   └── user_settings_live_test.exs
│   │   └── user_auth_test.exs
│   ├── support
│   │   ├── fixtures
│   │   │   └── users_fixtures.ex
│   │   ├── conn_case.ex
│   │   └── data_case.ex
│   └── test_helper.exs
├── Dockerfile
├── mix.exs
└── README.md

</file_map>

<file_contents>
File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/channels/channel_user.ex
```ex
defmodule Lax.Channels.ChannelUser do
  use Ecto.Schema
  import Ecto.Query

  @primary_key false
  @foreign_key_type :binary_id

  schema "channels_users" do
    field :last_viewed_at, :naive_datetime_usec

    belongs_to :channel, Lax.Channels.Channel, primary_key: true
    belongs_to :user, Lax.Users.User, primary_key: true

    timestamps(updated_at: false)
  end

  def channels_with_other_users_query(user) do
    __MODULE__
    |> join(:inner, [cu], u in assoc(cu, :user))
    |> where([cu, u], u.id != ^user.id and is_nil(u.deleted_at))
    |> select([cu], cu.channel_id)
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/channels/channel.ex
```ex
defmodule Lax.Channels.Channel do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "channels" do
    field :name, :string
    field :type, Ecto.Enum, values: [:channel, :direct_message]

    many_to_many :users, Lax.Users.User, join_through: Lax.Channels.ChannelUser

    timestamps()
  end

  def changeset(channel, :channel, attrs) do
    channel
    |> cast(attrs, [:name])
    |> put_change(:type, :channel)
    |> validate_required([:name])
    |> validate_format(:name, ~r/^[a-z][\-\_a-z0-9]*$/,
      message: "must consist of lowercase letters, dashes, and underscores only"
    )
    |> unsafe_validate_unique(:name, Lax.Repo)
    |> unique_constraint(:name)
  end

  def changeset(channel, :direct_message, attrs) do
    channel
    |> cast(attrs, [])
    |> put_change(:type, :direct_message)
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/channels/default_channel.ex
```ex
defmodule Lax.Channels.DefaultChannel do
  use Ecto.Schema

  @primary_key false
  @foreign_key_type :binary_id

  schema "default_channels" do
    belongs_to :channel, Lax.Channels.Channel, primary_key: true
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/messages/link_preview_pub_sub.ex
```ex
defmodule Lax.Messages.LinkPreview.PubSub do
  @moduledoc """
  PubSub helpers for link_preview messages.

  """

  alias Lax.Messages.LinkPreview

  @doc """
  Subscribes to messages for all link_previews that are associated with
  the given resource.

  """
  def subscribe_link_preview({:ok, subject}) do
    {:ok, subscribe_link_preview(subject)}
  end

  def subscribe_link_preview({:error, reason}) do
    {:error, reason}
  end

  def subscribe_link_preview(resource = %_ResourceSchema{}) do
    topic = link_preview_topic(resource)
    Phoenix.PubSub.subscribe(Lax.PubSub, topic)
    resource
  end

  @doc """
  Broadcasts a message for a link_preview on the topic for the
  associated resource.

  """
  def broadcast_link_preview({:ok, subject}, message) do
    {:ok, broadcast_link_preview(subject, message)}
  end

  def broadcast_link_preview({:error, reason}, _message) do
    {:error, reason}
  end

  def broadcast_link_preview(link_preview = %LinkPreview{}, message) do
    topic = link_preview_topic(link_preview)
    Phoenix.PubSub.broadcast(Lax.PubSub, topic, {:link_preview, message, link_preview})
    link_preview
  end

  defp link_preview_topic(link_preview = %LinkPreview{}) do
    "link_previews:#{link_preview.resource_id}"
  end

  defp link_preview_topic(%_ResourceSchema{id: resource_id}) do
    "link_previews:#{resource_id}"
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/messages/link_preview.ex
```ex
defmodule Lax.Messages.LinkPreview do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  @foreign_key_type :binary_id

  schema "link_previews" do
    field :link, :string, primary_key: true
    field :resource_id, :binary_id, primary_key: true

    field :page_title, :string
    field :page_description, :string
    field :page_site_name, :string
    field :page_url, :string
    field :page_icon_url, :string
    field :page_image_url, :string

    field :state, Ecto.Enum, values: [:loading, :failed, :done]
  end

  def changeset(link_preview, attrs) do
    link_preview
    |> cast(attrs, [:link, :resource_id])
    |> validate_required([:link, :resource_id])
    |> put_change(:state, :loading)
    |> unique_constraint(:link, name: :link_previews_pkey)
  end

  def loaded_changeset(link_preview, attrs) do
    link_preview
    |> cast(attrs, [
      :page_title,
      :page_description,
      :page_site_name,
      :page_url,
      :page_icon_url,
      :page_image_url
    ])
    |> update_change(:page_description, &limit_string(&1, 255, ellipsis: true))
    # Link previews that fail changeset validation will automatically be removed
    # |> validate_required([:page_title, :page_description, :page_image_url])
    |> put_change(:state, :done)
  end

  def failed_changeset(link_preview, _attrs) do
    change(link_preview, state: :failed)
  end

  defp limit_string(str, limit, opts) do
    if opts[:ellipsis] == true and String.length(str) > limit do
      String.slice(str, 0..(limit - 4)) <> "..."
    else
      String.slice(str, 0..(limit - 1))
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/messages/message.ex
```ex
defmodule Lax.Messages.Message do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "messages" do
    field :text, :string

    belongs_to :channel, Lax.Channels.Channel
    belongs_to :sent_by_user, Lax.Users.User

    has_many :link_previews, Lax.Messages.LinkPreview, foreign_key: :resource_id

    field :compact, :boolean, default: false, virtual: true

    timestamps(type: :naive_datetime_usec)
  end

  def changeset(message, attrs) do
    message
    |> cast(attrs, [:text])
    |> validate_required([:text])
  end

  def show_time(message, time_zone) do
    {time_zone, strfmt} =
      if time_zone do
        {time_zone, "%I:%M %p"}
      else
        {"America/New_York", "%I:%M %p (%Z)"}
      end

    strfmt =
      cond do
        message.compact -> "%I:%M"
        before_beggining_of_day?(message.inserted_at) -> "#{strfmt}, %m/%d/%y"
        true -> strfmt
      end

    message.inserted_at
    |> DateTime.from_naive!("Etc/UTC")
    |> DateTime.shift_zone!(time_zone)
    |> Calendar.strftime(strfmt)
    |> String.trim_leading("0")
  end

  def before_beggining_of_day?(naive_date_time) do
    NaiveDateTime.before?(
      naive_date_time,
      NaiveDateTime.beginning_of_day(NaiveDateTime.utc_now())
    )
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/users/colors.ex
```ex
defmodule Lax.Users.Colors do
  @doc """
  All 400-level colors from the TailwindCSS default palette.

      https://tailwindcss.com/docs/customizing-colors#default-color-palette

  """
  def colors() do
    [
      "#94a3b8",
      "#9ca3af",
      "#a1a1aa",
      "#a3a3a3",
      "#a8a29e",
      "#f87171",
      "#fb923c",
      "#fbbf24",
      "#facc15",
      "#a3e635",
      "#4ade80",
      "#34d399",
      "#2dd4bf",
      "#22d3ee",
      "#38bdf8",
      "#60a5fa",
      "#818cf8",
      "#a78bfa",
      "#c084fc",
      "#e879f9",
      "#f472b6",
      "#fb7185"
    ]
  end

  def random() do
    Enum.random(colors())
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/users/membership.ex
```ex
defmodule Lax.Users.Membership do
  import Ecto.Query

  alias Lax.Channels.DefaultChannel
  alias Lax.Channels.Channel
  alias Lax.Channels.ChannelUser
  alias Lax.Repo

  def get_channel!(id, user, type) do
    Repo.one!(
      from c in Channel,
        join: u in assoc(c, :users),
        where: u.id == ^user.id,
        where: c.id == ^id,
        where: c.type == ^type
    )
  end

  def get_default_channel(nil) do
    Repo.get_by!(Channel, name: "general", type: :channel)
  end

  def get_default_channel(user) do
    query =
      from c in Channel,
        join: cu in ChannelUser,
        on: [channel_id: c.id, user_id: ^user.id],
        where:
          c.type != :direct_message or
            c.id in subquery(ChannelUser.channels_with_other_users_query(user)),
        order_by: [desc_nulls_last: cu.last_viewed_at, asc: c.name],
        limit: 1

    Repo.one!(query)
  end

  def list_channels(nil, :channel = type) do
    Repo.all(
      from c in Channel,
        where: c.type == ^type,
        order_by: [asc: c.name]
    )
  end

  def list_channels(nil, :direct_message) do
    []
  end

  def list_channels(user, type) do
    query =
      from c in Channel,
        join: u in assoc(c, :users),
        where: u.id == ^user.id,
        where: c.type == ^type

    query =
      case type do
        :channel ->
          order_by(query, [c], asc: c.name)

        :direct_message ->
          query
          |> where([c], c.id in subquery(ChannelUser.channels_with_other_users_query(user)))
          |> order_by([c], desc: c.inserted_at)
      end

    Repo.all(query)
  end

  def other_users_in_direct_messages(nil) do
    %{}
  end

  def other_users_in_direct_messages(user) do
    own_direct_messages =
      from c in Channel,
        join: u in assoc(c, :users),
        where: u.id == ^user.id,
        where: c.type == :direct_message

    query =
      from c in subquery(own_direct_messages),
        join: u in assoc(c, :users),
        where: u.id != ^user.id,
        select: %{channel_id: c.id, user: u}

    query
    |> Repo.all()
    |> Enum.group_by(& &1.channel_id, & &1.user)
  end

  def join_channel!(user, channel) do
    Repo.insert!(%ChannelUser{
      channel: channel,
      user: user
    })
  end

  def leave_channel!(user, channel) do
    delete_query =
      from ChannelUser,
        where: [channel_id: ^channel.id, user_id: ^user.id]

    Repo.delete_all(delete_query)
  end

  def join_default_channels!(user) do
    channels =
      Repo.all(
        from d in DefaultChannel,
          join: c in assoc(d, :channel),
          select: c
      )

    Enum.each(channels, &join_channel!(user, &1))
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/users/user_notifier.ex
```ex
defmodule Lax.Users.UserNotifier do
  import Swoosh.Email

  # alias Lax.Mailer

  # Delivers the email using the application mailer.
  defp deliver(recipient, subject, body) do
    email =
      new()
      |> to(recipient)
      |> from({"Lax", "contact@example.com"})
      |> subject(subject)
      |> text_body(body)

    # with {:ok, _metadata} <- Mailer.deliver(email) do
    #   {:ok, email}
    # end
    {:ok, email}
  end

  @doc """
  Deliver instructions to confirm account.
  """
  def deliver_confirmation_instructions(user, url) do
    deliver(user.email, "Confirmation instructions", """

    ==============================

    Hi #{user.email},

    You can confirm your account by visiting the URL below:

    #{url}

    If you didn't create an account with us, please ignore this.

    ==============================
    """)
  end

  @doc """
  Deliver instructions to reset a user password.
  """
  def deliver_reset_password_instructions(user, url) do
    deliver(user.email, "Reset password instructions", """

    ==============================

    Hi #{user.email},

    You can reset your password by visiting the URL below:

    #{url}

    If you didn't request this change, please ignore this.

    ==============================
    """)
  end

  @doc """
  Deliver instructions to update a user email.
  """
  def deliver_update_email_instructions(user, url) do
    deliver(user.email, "Update email instructions", """

    ==============================

    Hi #{user.email},

    You can change your email by visiting the URL below:

    #{url}

    If you didn't request this change, please ignore this.

    ==============================
    """)
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/users/user_token.ex
```ex
defmodule Lax.Users.UserToken do
  use Ecto.Schema
  import Ecto.Query
  alias Lax.Users.UserToken

  @hash_algorithm :sha256
  @rand_size 32

  # It is very important to keep the reset password token expiry short,
  # since someone with access to the email may take over the account.
  @reset_password_validity_in_days 1
  @confirm_validity_in_days 7
  @change_email_validity_in_days 7
  @session_validity_in_days 60

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users_tokens" do
    field :token, :binary
    field :context, :string
    field :sent_to, :string
    belongs_to :user, Lax.Users.User

    timestamps(updated_at: false)
  end

  @doc """
  Generates a token that will be stored in a signed place,
  such as session or cookie. As they are signed, those
  tokens do not need to be hashed.

  The reason why we store session tokens in the database, even
  though Phoenix already provides a session cookie, is because
  Phoenix' default session cookies are not persisted, they are
  simply signed and potentially encrypted. This means they are
  valid indefinitely, unless you change the signing/encryption
  salt.

  Therefore, storing them allows individual user
  sessions to be expired. The token system can also be extended
  to store additional data, such as the device used for logging in.
  You could then use this information to display all valid sessions
  and devices in the UI and allow users to explicitly expire any
  session they deem invalid.
  """
  def build_session_token(user) do
    token = :crypto.strong_rand_bytes(@rand_size)
    {token, %UserToken{token: token, context: "session", user_id: user.id}}
  end

  @doc """
  Checks if the token is valid and returns its underlying lookup query.

  The query returns the user found by the token, if any.

  The token is valid if it matches the value in the database and it has
  not expired (after @session_validity_in_days).
  """
  def verify_session_token_query(token) do
    query =
      from token in by_token_and_context_query(token, "session"),
        join: user in assoc(token, :user),
        where: token.inserted_at > ago(@session_validity_in_days, "day"),
        select: user

    {:ok, query}
  end

  @doc """
  Builds a token and its hash to be delivered to the user's email.

  The non-hashed token is sent to the user email while the
  hashed part is stored in the database. The original token cannot be reconstructed,
  which means anyone with read-only access to the database cannot directly use
  the token in the application to gain access. Furthermore, if the user changes
  their email in the system, the tokens sent to the previous email are no longer
  valid.

  Users can easily adapt the existing code to provide other types of delivery methods,
  for example, by phone numbers.
  """
  def build_email_token(user, context) do
    build_hashed_token(user, context, user.email)
  end

  defp build_hashed_token(user, context, sent_to) do
    token = :crypto.strong_rand_bytes(@rand_size)
    hashed_token = :crypto.hash(@hash_algorithm, token)

    {Base.url_encode64(token, padding: false),
     %UserToken{
       token: hashed_token,
       context: context,
       sent_to: sent_to,
       user_id: user.id
     }}
  end

  @doc """
  Checks if the token is valid and returns its underlying lookup query.

  The query returns the user found by the token, if any.

  The given token is valid if it matches its hashed counterpart in the
  database and the user email has not changed. This function also checks
  if the token is being used within a certain period, depending on the
  context. The default contexts supported by this function are either
  "confirm", for account confirmation emails, and "reset_password",
  for resetting the password. For verifying requests to change the email,
  see `verify_change_email_token_query/2`.
  """
  def verify_email_token_query(token, context) do
    case Base.url_decode64(token, padding: false) do
      {:ok, decoded_token} ->
        hashed_token = :crypto.hash(@hash_algorithm, decoded_token)
        days = days_for_context(context)

        query =
          from token in by_token_and_context_query(hashed_token, context),
            join: user in assoc(token, :user),
            where: token.inserted_at > ago(^days, "day") and token.sent_to == user.email,
            select: user

        {:ok, query}

      :error ->
        :error
    end
  end

  defp days_for_context("confirm"), do: @confirm_validity_in_days
  defp days_for_context("reset_password"), do: @reset_password_validity_in_days

  @doc """
  Checks if the token is valid and returns its underlying lookup query.

  The query returns the user found by the token, if any.

  This is used to validate requests to change the user
  email. It is different from `verify_email_token_query/2` precisely because
  `verify_email_token_query/2` validates the email has not changed, which is
  the starting point by this function.

  The given token is valid if it matches its hashed counterpart in the
  database and if it has not expired (after @change_email_validity_in_days).
  The context must always start with "change:".
  """
  def verify_change_email_token_query(token, "change:" <> _ = context) do
    case Base.url_decode64(token, padding: false) do
      {:ok, decoded_token} ->
        hashed_token = :crypto.hash(@hash_algorithm, decoded_token)

        query =
          from token in by_token_and_context_query(hashed_token, context),
            where: token.inserted_at > ago(@change_email_validity_in_days, "day")

        {:ok, query}

      :error ->
        :error
    end
  end

  @doc """
  Returns the token struct for the given token value and context.
  """
  def by_token_and_context_query(token, context) do
    from UserToken, where: [token: ^token, context: ^context]
  end

  @doc """
  Gets all tokens for the given user for the given contexts.
  """
  def by_user_and_contexts_query(user, :all) do
    from t in UserToken, where: t.user_id == ^user.id
  end

  def by_user_and_contexts_query(user, [_ | _] = contexts) do
    from t in UserToken, where: t.user_id == ^user.id and t.context in ^contexts
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/users/user.ex
```ex
defmodule Lax.Users.User do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  alias Lax.Users.UserToken

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "users" do
    field :email, :string
    field :username, :string
    field :password, :string, virtual: true, redact: true
    field :hashed_password, :string, redact: true
    field :time_zone, :string, default: "America/New_York"
    field :display_color, :string
    field :confirmed_at, :naive_datetime
    field :deleted_at, :naive_datetime
    field :apns_device_token, {:array, :string}, default: []

    embeds_one :ui_settings, UiSettings, on_replace: :update, primary_key: false do
      field :channels_sidebar_width, :integer, default: 250
      field :direct_messages_sidebar_width, :integer, default: 500
      field :profile_sidebar_width, :integer, default: 500
    end

    many_to_many :channels, Lax.Channels.Channel, join_through: Lax.Channels.ChannelUser

    field :terms_of_service, :boolean, virtual: true

    timestamps(type: :utc_datetime)
  end

  @doc """
  A user changeset for registration.

  It is important to validate the length of both email and password.
  Otherwise databases may truncate the email without warnings, which
  could lead to unpredictable or insecure behaviour. Long passwords may
  also be very expensive to hash for certain algorithms.

  ## Options

    * `:hash_password` - Hashes the password so it can be stored securely
      in the database and ensures the password field is cleared to prevent
      leaks in the logs. If password hashing is not needed and clearing the
      password field is not desired (like when using this changeset for
      validations on a LiveView form), this option can be set to `false`.
      Defaults to `true`.

    * `:validate_email` - Validates the uniqueness of the email, in case
      you don't want to validate the uniqueness of the email (like when
      using this changeset for validations on a LiveView form before
      submitting the form), this option can be set to `false`.
      Defaults to `true`.
  """
  def registration_changeset(user, attrs, opts \\ []) do
    user
    |> cast(attrs, [:email, :username, :password, :time_zone, :terms_of_service])
    |> validate_email(opts)
    |> validate_username(opts)
    |> validate_password(opts)
    |> validate_time_zone()
    |> validate_acceptance(:terms_of_service, message: "please agree to the terms of service")
  end

  defp validate_email(changeset, opts) do
    changeset
    |> validate_required([:email])
    |> validate_format(:email, ~r/^[^\s]+@[^\s]+$/, message: "must have the @ sign and no spaces")
    |> validate_length(:email, max: 160)
    |> maybe_validate_unique_email(opts)
  end

  defp validate_username(changeset, opts) do
    changeset
    |> validate_required([:username])
    |> validate_length(:username, min: 1, max: 40)
    |> maybe_validate_unique_username(opts)
  end

  defp validate_password(changeset, opts) do
    changeset
    |> validate_required([:password])
    |> validate_length(:password, min: 8, max: 72)
    # Examples of additional password validation:
    # |> validate_format(:password, ~r/[a-z]/, message: "at least one lower case character")
    # |> validate_format(:password, ~r/[A-Z]/, message: "at least one upper case character")
    # |> validate_format(:password, ~r/[!?@#$%^&*_0-9]/, message: "at least one digit or punctuation character")
    |> maybe_hash_password(opts)
  end

  defp maybe_hash_password(changeset, opts) do
    hash_password? = Keyword.get(opts, :hash_password, true)
    password = get_change(changeset, :password)

    if hash_password? && password && changeset.valid? do
      changeset
      # If using Bcrypt, then further validate it is at most 72 bytes long
      |> validate_length(:password, max: 72, count: :bytes)
      # Hashing could be done with `Ecto.Changeset.prepare_changes/2`, but that
      # would keep the database transaction open longer and hurt performance.
      |> put_change(:hashed_password, Bcrypt.hash_pwd_salt(password))
      |> delete_change(:password)
    else
      changeset
    end
  end

  defp maybe_validate_unique_email(changeset, opts) do
    if Keyword.get(opts, :validate_email, true) do
      changeset
      |> unsafe_validate_unique(:email, Lax.Repo)
      |> unique_constraint(:email)
    else
      changeset
    end
  end

  defp maybe_validate_unique_username(changeset, opts) do
    if Keyword.get(opts, :validate_username, true) do
      changeset
      |> unsafe_validate_unique(:username, Lax.Repo)
      |> unique_constraint(:username)
    else
      changeset
    end
  end

  defp validate_time_zone(changeset) do
    changeset
    |> validate_required([:time_zone])
    |> validate_inclusion(:time_zone, Tzdata.zone_list())
  end

  @doc """
  A user changeset for changing the email.

  It requires the email to change otherwise an error is added.
  """
  def email_changeset(user, attrs, opts \\ []) do
    user
    |> cast(attrs, [:email])
    |> validate_email(opts)
    |> case do
      %{changes: %{email: _}} = changeset -> changeset
      %{} = changeset -> add_error(changeset, :email, "did not change")
    end
  end

  @doc """
  A user changeset for changing the password.

  ## Options

    * `:hash_password` - Hashes the password so it can be stored securely
      in the database and ensures the password field is cleared to prevent
      leaks in the logs. If password hashing is not needed and clearing the
      password field is not desired (like when using this changeset for
      validations on a LiveView form), this option can be set to `false`.
      Defaults to `true`.
  """
  def password_changeset(user, attrs, opts \\ []) do
    user
    |> cast(attrs, [:password])
    |> validate_confirmation(:password, message: "does not match password")
    |> validate_password(opts)
  end

  @doc """
  Confirms the account by setting `confirmed_at`.
  """
  def confirm_changeset(user) do
    now = NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second)
    change(user, confirmed_at: now)
  end

  def ui_settings_changeset(user, attrs) do
    user
    |> cast(attrs, [])
    |> cast_embed(:ui_settings, with: &ui_settings_embed_changeset/2)
  end

  def ui_settings_embed_changeset(ui_settings, attrs) do
    cast(ui_settings, attrs, [
      :channels_sidebar_width,
      :direct_messages_sidebar_width,
      :profile_sidebar_width
    ])
  end

  def apns_device_token_changeset(user, attrs) do
    user
    |> cast(attrs, [:apns_device_token])
  end

  def delete_changeset(user) do
    system_time = :os.system_time()

    user
    |> change(
      email: "deleted+#{system_time}@lax.so",
      username: "deleted_#{system_time}",
      password: Base.encode64(:crypto.strong_rand_bytes(16)),
      time_zone: "America/New_York",
      display_color: "#71717a",
      ui_settings: nil,
      apns_device_token: [],
      confirmed_at: nil,
      deleted_at: NaiveDateTime.utc_now(:second)
    )
    |> maybe_hash_password(hash_password: true)
  end

  @doc """
  Verifies the password.

  If there is no user or the user doesn't have a password, we call
  `Bcrypt.no_user_verify/0` to avoid timing attacks.
  """
  def valid_password?(%Lax.Users.User{hashed_password: hashed_password}, password)
      when is_binary(hashed_password) and byte_size(password) > 0 do
    Bcrypt.verify_pass(password, hashed_password)
  end

  def valid_password?(_, _) do
    Bcrypt.no_user_verify()
    false
  end

  @doc """
  Validates the current password otherwise adds an error to the changeset.
  """
  def validate_current_password(changeset, password) do
    if valid_password?(changeset.data, password) do
      changeset
    else
      add_error(changeset, :current_password, "is not valid")
    end
  end

  ## Queries

  def active_query(query \\ __MODULE__) do
    where(query, [u], is_nil(u.deleted_at))
  end

  ## Multis

  def delete_user_multi(multi, user) do
    multi
    |> Ecto.Multi.update(:user, delete_changeset(user))
    |> Ecto.Multi.delete_all(:user_tokens, UserToken.by_user_and_contexts_query(user, :all))
  end

  ## View

  def display_name(user) do
    if user.deleted_at, do: "Deleted User", else: user.username
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/application.ex
```ex
defmodule Lax.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      LaxWeb.Telemetry,
      Lax.Repo,
      {DNSCluster, query: Application.get_env(:lax, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Lax.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Lax.Finch},
      # Task supervisor for sending pigeon push notifications async
      {Task.Supervisor, name: Lax.PigeonSupervisor},
      {Lynx.LinkPreview.Server,
       context_module: Lax.Messages, client: [strategy: Lynx.LinkPreview.OpenGraphClient]},
      # Start a worker by calling: Lax.Worker.start_link(arg)
      # {Lax.Worker, arg},
      # Start to serve requests, typically the last entry
      LaxWeb.Presence,
      LaxWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Lax.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LaxWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/channels.ex
```ex
defmodule Lax.Channels do
  import Ecto.Query, warn: false

  alias Lax.Repo
  alias Lax.Channels.Channel
  alias Lax.Users.Membership

  def get!(id, type) do
    Repo.one!(
      from c in Channel,
        where: c.id == ^id,
        where: c.type == ^type
    )
  end

  def list(:channel = type) do
    Repo.all(
      from c in Channel,
        where: c.type == ^type,
        order_by: c.name
    )
  end

  def create(attrs, opts \\ []) do
    %Channel{}
    |> Channel.changeset(Keyword.get(opts, :type, :channel), attrs)
    |> Repo.insert()
  end

  def create_and_join(user, attrs, opts \\ []) do
    Repo.transaction(fn ->
      case create(attrs, opts) do
        {:ok, channel} ->
          Membership.join_channel!(user, channel)

          opts
          |> Keyword.get(:invite_users, [])
          |> Enum.each(&Membership.join_channel!(&1, channel))

          channel

        {:error, reason} ->
          Repo.rollback(reason)
      end
    end)
  end

  def subscribe_to_new_channels(user) do
    Phoenix.PubSub.subscribe(Lax.PubSub, new_channels_topic(user))
  end

  def unsubscribe_from_new_channels(user) do
    Phoenix.PubSub.unsubscribe(Lax.PubSub, new_channels_topic(user))
  end

  def broadcast_new_channel(users, channel) do
    info = {__MODULE__, {:new_channel, channel}}

    for user <- List.wrap(users) do
      Phoenix.PubSub.broadcast(Lax.PubSub, new_channels_topic(user), info)
    end
  end

  def new_channels_topic(%{id: user_id}), do: "new_channel:#{user_id}"
  def new_channels_topic(user_id), do: "new_channel:#{user_id}"
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/chat.ex
```ex
defmodule Lax.Chat do
  alias Lax.Repo
  alias Lax.Channels
  alias Lax.Indicators
  alias Lax.Messages
  alias Lax.Users.Membership

  defstruct [
    :user,
    # Channel records of type :channel, in order of asc: :name
    :channels,
    # Channel records of type :direct_message, in order of desc: :inserted_at
    :direct_messages,
    # Map of users associated with direct messages, keyed by channel_id
    :direct_messages_other_users,
    # Current channel, of any type
    :current_channel,
    # Current messages
    :messages,
    # List of latest messages sent in :direct_message channels
    :latest_message_in_direct_messages,
    # Map of unread message countes, keyed by channel_id
    :unread_counts,
    # MapSet of channels that have already been subscribed to
    :subscribed_channels
  ]

  def load(user, channel \\ nil) do
    %__MODULE__{
      user: user,
      current_channel: channel || Membership.get_default_channel(user),
      subscribed_channels: MapSet.new()
    }
    |> tap(&Indicators.mark_viewed(user, &1.current_channel.id))
    |> put_channels()
    |> put_messages()
    |> put_latest_message_in_direct_messages()
    |> put_unread_counts()
    |> subscribe_channels()
    |> subscribe_messages()
  end

  def current?(chat, channel) do
    chat.current_channel && chat.current_channel.id == channel.id
  end

  def has_activity?(chat, channel) do
    Map.has_key?(chat.unread_counts, channel.id)
  end

  def unread_count(chat, channel) do
    Map.get(chat.unread_counts, channel.id, 0)
  end

  def direct_message_users(chat, channel) do
    Map.fetch!(chat.direct_messages_other_users, channel.id)
  end

  def latest_message(chat, channel) do
    Map.fetch!(chat.latest_message_in_direct_messages, channel.id)
  end

  def select_channel(chat, nil) do
    chat
    |> Map.put(:current_channel, nil)
    |> put_messages()
  end

  def select_channel(chat, channel_id) do
    if user = chat.user do
      Indicators.mark_viewed(user, channel_id)
    end

    if channel = Enum.find(chat.channels ++ chat.direct_messages, &(&1.id == channel_id)) do
      {:ok,
       chat
       |> Map.put(:current_channel, channel)
       |> put_messages()
       |> put_unread_counts()}
    else
      {:error, :channel_not_found}
    end
  end

  def send_message(chat, attrs) do
    if chat.user == nil, do: raise("User required to send message")

    {:ok, message} = Messages.send(chat.current_channel, chat.user, attrs)
    message = Repo.preload(message, :link_previews)
    Messages.broadcast_sent_message(chat.current_channel, message)

    chat
  end

  def delete_message(chat, message_id) do
    if chat.user == nil, do: raise("User required to delete message")

    Messages.delete!(message_id, chat.user)
    Messages.broadcast_deleted_message(chat.current_channel, message_id)

    chat
  end

  def reload_channels(chat) do
    chat
    |> put_channels()
    |> put_latest_message_in_direct_messages()
    |> put_unread_counts()
    |> subscribe_messages()
  end

  def reload_messages(chat) do
    chat
    |> put_messages()
    |> put_latest_message_in_direct_messages()
    |> put_unread_counts()
  end

  def receive_sent_message(chat, message) do
    if chat.current_channel && chat.current_channel.id == message.channel_id do
      Indicators.mark_viewed(chat.user, message.channel_id)
      Messages.LinkPreview.PubSub.subscribe_link_preview(message)
      %{chat | messages: [message | chat.messages]}
    else
      chat
    end
    |> put_latest_message_in_direct_messages()
    |> put_unread_counts()
  end

  def receive_link_preview(chat, %{resource_id: resource_id}) do
    if chat.current_channel do
      messages =
        Enum.map(chat.messages, fn
          %{id: ^resource_id} = message -> Repo.preload(message, :link_previews, force: true)
          message -> message
        end)

      %{chat | messages: messages}
    else
      chat
    end
  end

  def receive_deleted_message(chat, {channel_id, message_id}) do
    if chat.current_channel && chat.current_channel.id == channel_id do
      Indicators.mark_viewed(chat.user, channel_id)
      %{chat | messages: Enum.reject(chat.messages, &(&1.id == message_id))}
    else
      chat
    end
    |> put_latest_message_in_direct_messages()
    |> put_unread_counts()
  end

  ## Private

  defp subscribe_channels(chat) do
    Channels.subscribe_to_new_channels(chat.user)

    chat
  end

  defp subscribe_messages(chat) do
    channel_ids = MapSet.new(chat.channels ++ chat.direct_messages, & &1.id)

    for channel_id <- MapSet.difference(channel_ids, chat.subscribed_channels) do
      Messages.subscribe_to_sent_messages(channel_id)
    end

    for channel_id <- MapSet.difference(chat.subscribed_channels, channel_ids) do
      Messages.unsubscribe_from_sent_messages(channel_id)
    end

    Map.put(chat, :subscribed_channels, channel_ids)
  end

  defp put_channels(chat) do
    chat =
      %{
        chat
        | channels: Membership.list_channels(chat.user, :channel),
          direct_messages: Membership.list_channels(chat.user, :direct_message),
          direct_messages_other_users: Membership.other_users_in_direct_messages(chat.user)
      }

    if chat.user && chat.current_channel &&
         chat.current_channel.id not in Enum.map(chat.channels, & &1.id) do
      %{chat | current_channel: Membership.get_default_channel(chat.user)}
    else
      chat
    end
  end

  defp put_messages(chat) do
    if channel = chat.current_channel do
      %{chat | messages: Messages.list(channel)}
    else
      %{chat | messages: []}
    end
  end

  defp put_latest_message_in_direct_messages(chat) do
    direct_message_ids = Enum.map(chat.direct_messages, & &1.id)
    latest = Messages.list_latest_in_channels(direct_message_ids)

    %{chat | latest_message_in_direct_messages: latest}
  end

  defp put_unread_counts(chat) do
    %{chat | unread_counts: Indicators.unread_counts_since_last_viewed(chat.user)}
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/indicators.ex
```ex
defmodule Lax.Indicators do
  import Ecto.Query

  alias Lax.Channels.ChannelUser
  alias Lax.Messages.Message
  alias Lax.Repo

  def mark_viewed(nil, _channel_id) do
    :ok
  end

  def mark_viewed(user, channel_id) do
    now = NaiveDateTime.utc_now()

    ChannelUser
    |> Repo.get_by!(channel_id: channel_id, user_id: user.id)
    |> Ecto.Changeset.change(last_viewed_at: NaiveDateTime.truncate(now, :microsecond))
    |> Repo.update!()

    :ok
  end

  def unread_counts_since_last_viewed(nil) do
    %{}
  end

  def unread_counts_since_last_viewed(user) do
    query =
      from m in Message,
        join: cu in ChannelUser,
        on: [channel_id: m.channel_id, user_id: ^user.id],
        select: {m.channel_id, count(m)},
        where: is_nil(cu.last_viewed_at) or m.inserted_at > cu.last_viewed_at,
        where: m.sent_by_user_id != ^user.id,
        group_by: m.channel_id

    query
    |> Repo.all()
    |> Map.new()
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/mailer.ex
```ex
defmodule Lax.Mailer do
  use Swoosh.Mailer, otp_app: :lax
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/messages.ex
```ex
defmodule Lax.Messages do
  import Ecto.Query, warn: false

  alias Lax.Repo
  alias Lax.Messages.Message

  def list(channel) do
    query =
      from m in Message,
        where: m.channel_id == ^channel.id,
        order_by: [desc: :inserted_at],
        preload: [:sent_by_user, :link_previews]

    Repo.all(query)
  end

  def list_latest_in_channels(channel_ids) do
    window_query =
      from m in Message,
        where: m.channel_id in ^channel_ids,
        select: %{
          message_id: m.id,
          row_number: over(row_number(), :channel)
        },
        windows: [channel: [partition_by: m.channel_id, order_by: [desc: m.inserted_at]]]

    messages_query =
      from m in Message,
        join: t in subquery(window_query),
        on: t.message_id == m.id and t.row_number == 1,
        order_by: [desc: m.inserted_at],
        preload: [:channel, :sent_by_user]

    Repo.all(messages_query)
  end

  def send(channel, sent_by_user, attrs) do
    %Message{}
    |> Map.put(:channel, channel)
    |> Map.put(:sent_by_user, sent_by_user)
    |> Message.changeset(attrs)
    |> Repo.insert()
    |> Lynx.LinkPreview.Server.submit_resource()
  end

  def delete!(id, user) do
    delete_query =
      from Message,
        where: [id: ^id, sent_by_user_id: ^user.id]

    Repo.delete_all(delete_query)
  end

  def subscribe_to_sent_messages(channel) do
    Phoenix.PubSub.subscribe(Lax.PubSub, sent_messages_topic(channel))
  end

  def unsubscribe_from_sent_messages(channel) do
    Phoenix.PubSub.unsubscribe(Lax.PubSub, sent_messages_topic(channel))
  end

  def broadcast_sent_message(channel, message) do
    info = {__MODULE__, {:sent_message, message}}
    Phoenix.PubSub.broadcast(Lax.PubSub, sent_messages_topic(channel), info)

    with pid when pid != nil <- GenServer.whereis(:apns_default),
         :direct_message <- channel.type do
      users = Repo.preload(channel, :users).users
      sender = message.sent_by_user
      title = "@#{sender.username}"

      for user <- users, user.id != message.sent_by_user_id do
        for device_token <- user.apns_device_token do
          bundle_id = "com.example.Lax"

          subtitle =
            case Enum.filter(users, &(&1.id != user.id and &1.id != sender.id)) do
              [] ->
                nil

              users ->
                users
                |> Enum.reduce({"To You", length(users)}, fn
                  user, {"", l} ->
                    {"@#{user.username}", l - 1}

                  user, {acc, 1} ->
                    {"#{acc} & @#{user.username}", 0}

                  user, {acc, l} ->
                    {"#{acc}, @#{user.username}", l - 1}
                end)
                |> elem(0)
            end

          Task.Supervisor.start_child(Lax.PigeonSupervisor, fn ->
            notification =
              Pigeon.APNS.Notification.new("", device_token, bundle_id)
              |> Pigeon.APNS.Notification.put_custom(%{
                "aps" => %{
                  "alert" => %{
                    "title" => title,
                    "subtitle" => subtitle,
                    "body" => message.text
                  },
                  "thread-id" => channel.id
                },
                "navigate" => channel.id
              })

            Pigeon.APNS.push(notification)
          end)
        end
      end
    end
  end

  def broadcast_deleted_message(channel, message_id) do
    info = {__MODULE__, {:deleted_message, {channel.id, message_id}}}
    Phoenix.PubSub.broadcast(Lax.PubSub, sent_messages_topic(channel), info)
  end

  def sent_messages_topic(%{id: channel_id}), do: "channel_messages:#{channel_id}"
  def sent_messages_topic(channel_id), do: "channel_messages:#{channel_id}"

  alias Lax.Messages.LinkPreview

  @doc """
  Returns the list of link_preview for a particular resource.

  ## Examples

    iex> list_link_previews(resource)
    [%LinkPreview{}, %LinkPreview{}]

  """
  def list_link_previews(resource = %_Schema{}) do
    Repo.all(
      from l in LinkPreview,
        where: [resource_id: ^resource.id]
    )
  end

  @doc """
  Creates a new link_preview for a resource in a loading state.

  ## Examples

    iex> create_link_preview(link, resource)
    %LinkPreview{}

  """
  def create_link_preview(link, resource = %_Schema{}) do
    %LinkPreview{}
    |> LinkPreview.changeset(%{link: link, resource_id: resource.id})
    |> Repo.insert()
    |> LinkPreview.PubSub.broadcast_link_preview(:created)
  end

  @doc """
  Updates a link_preview when it has been successfully loaded.

  ## Examples

    iex> update_link_preview_loaded(link_preview, attrs)
    %LinkPreview{}

  """
  def update_link_preview_loaded(link_preview = %LinkPreview{}, attrs) do
    link_preview
    |> LinkPreview.loaded_changeset(attrs)
    |> Repo.update()
    |> LinkPreview.PubSub.broadcast_link_preview(:updated)
  end

  @doc """
  Updates a link_preview when it has failed to load.

  ## Examples

    iex> update_link_preview_failed(link_preview)
    %LinkPreview{}

  """
  def update_link_preview_failed(link_preview = %LinkPreview{}) do
    link_preview
    |> LinkPreview.failed_changeset(%{})
    |> Repo.update()
    |> LinkPreview.PubSub.broadcast_link_preview(:updated)
  end

  @doc """
  Deletes a link_preview.

  ## Examples

    iex> delete_link_preview(link_preview)
    %LinkPreview{}

  """
  def delete_link_preview(link_preview = %LinkPreview{}) do
    link_preview
    |> Repo.delete()
    |> LinkPreview.PubSub.broadcast_link_preview(:deleted)
  end

  @doc """
  Deletes every link_preview for a resource, with the option to delete only
  those matching specific links.

  ## Examples

    iex> delete_link_previews(resource)
    %ResourceSchema{}

    iex> delete_link_previews(resource, links: ["http://example.com/"])
    %ResourceSchema{}

  """
  def delete_link_previews(resource = %_Schema{}, opts \\ []) do
    q = from l in LinkPreview, where: [resource_id: ^resource.id]
    q = if links = opts[:links], do: where(q, [l], l.link in ^links), else: q
    Repo.delete_all(q)
    resource
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/release.ex
```ex
defmodule Lax.Release do
  @moduledoc """
  Used for executing DB release tasks when run in production without Mix
  installed.
  """
  @app :lax

  def migrate do
    load_app()

    for repo <- repos() do
      {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :up, all: true))
    end
  end

  def rollback(repo, version) do
    load_app()
    {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :down, to: version))
  end

  defp repos do
    Application.fetch_env!(@app, :ecto_repos)
  end

  defp load_app do
    Application.load(@app)
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/repo.ex
```ex
defmodule Lax.Repo do
  use Ecto.Repo,
    otp_app: :lax,
    adapter: Ecto.Adapters.Postgres
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax/users.ex
```ex
defmodule Lax.Users do
  @moduledoc """
  The Users context.
  """

  import Ecto.Query, warn: false
  alias Lax.Users.Membership
  alias Lax.Users.Colors
  alias Lax.Repo

  alias Lax.Users.{User, UserToken, UserNotifier}

  ## Database getters

  @doc """
  Gets a user by email.

  ## Examples

      iex> get_user_by_email("foo@example.com")
      %User{}

      iex> get_user_by_email("unknown@example.com")
      nil

  """
  def get_user_by_email(email) when is_binary(email) do
    Repo.get_by(User.active_query(), email: email)
  end

  @doc """
  Gets a user by email and password.

  ## Examples

      iex> get_user_by_email_and_password("foo@example.com", "correct_password")
      %User{}

      iex> get_user_by_email_and_password("foo@example.com", "invalid_password")
      nil

  """
  def get_user_by_email_and_password(email, password)
      when is_binary(email) and is_binary(password) do
    user = Repo.get_by(User.active_query(), email: email)
    if User.valid_password?(user, password), do: user
  end

  @doc """
  Gets a single user.

  Raises `Ecto.NoResultsError` if the User does not exist.

  ## Examples

      iex> get_user!(123)
      %User{}

      iex> get_user!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user!(id), do: Repo.get!(User, id)

  def get_all(ids) do
    Repo.all(from u in User.active_query(), where: u.id in ^ids)
  end

  def list_other_users(user) do
    Repo.all(
      from u in User.active_query(),
        where: u.id != ^user.id,
        order_by: [asc: u.username]
    )
  end

  ## User registration

  @doc """
  Registers a user.

  ## Examples

      iex> register_user(%{field: value})
      {:ok, %User{}}

      iex> register_user(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def register_user(attrs) do
    %User{display_color: Colors.random()}
    |> User.registration_changeset(attrs)
    |> Repo.insert()
    |> tap(fn
      {:ok, user} -> Membership.join_default_channels!(user)
      error -> error
    end)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user changes.

  ## Examples

      iex> change_user_registration(user)
      %Ecto.Changeset{data: %User{}}

  """
  def change_user_registration(%User{} = user, attrs \\ %{}) do
    User.registration_changeset(user, attrs,
      hash_password: false,
      validate_email: false,
      validate_username: false
    )
  end

  ## Settings

  @doc """
  Returns an `%Ecto.Changeset{}` for changing the user email.

  ## Examples

      iex> change_user_email(user)
      %Ecto.Changeset{data: %User{}}

  """
  def change_user_email(user, attrs \\ %{}) do
    User.email_changeset(user, attrs, validate_email: false)
  end

  @doc """
  Emulates that the email will change without actually changing
  it in the database.

  ## Examples

      iex> apply_user_email(user, "valid password", %{email: ...})
      {:ok, %User{}}

      iex> apply_user_email(user, "invalid password", %{email: ...})
      {:error, %Ecto.Changeset{}}

  """
  def apply_user_email(user, password, attrs) do
    user
    |> User.email_changeset(attrs)
    |> User.validate_current_password(password)
    |> Ecto.Changeset.apply_action(:update)
  end

  @doc """
  Updates the user email using the given token.

  If the token matches, the user email is updated and the token is deleted.
  The confirmed_at date is also updated to the current time.
  """
  def update_user_email(user, token) do
    context = "change:#{user.email}"

    with {:ok, query} <- UserToken.verify_change_email_token_query(token, context),
         %UserToken{sent_to: email} <- Repo.one(query),
         {:ok, _} <- Repo.transaction(user_email_multi(user, email, context)) do
      :ok
    else
      _ -> :error
    end
  end

  defp user_email_multi(user, email, context) do
    changeset =
      user
      |> User.email_changeset(%{email: email})
      |> User.confirm_changeset()

    Ecto.Multi.new()
    |> Ecto.Multi.update(:user, changeset)
    |> Ecto.Multi.delete_all(:tokens, UserToken.by_user_and_contexts_query(user, [context]))
  end

  @doc ~S"""
  Delivers the update email instructions to the given user.

  ## Examples

      iex> deliver_user_update_email_instructions(user, current_email, &url(~p"/users/settings/confirm_email/#{&1})")
      {:ok, %{to: ..., body: ...}}

  """
  def deliver_user_update_email_instructions(%User{} = user, current_email, update_email_url_fun)
      when is_function(update_email_url_fun, 1) do
    {encoded_token, user_token} = UserToken.build_email_token(user, "change:#{current_email}")

    Repo.insert!(user_token)
    UserNotifier.deliver_update_email_instructions(user, update_email_url_fun.(encoded_token))
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for changing the user password.

  ## Examples

      iex> change_user_password(user)
      %Ecto.Changeset{data: %User{}}

  """
  def change_user_password(user, attrs \\ %{}) do
    User.password_changeset(user, attrs, hash_password: false)
  end

  @doc """
  Updates the user password.

  ## Examples

      iex> update_user_password(user, "valid password", %{password: ...})
      {:ok, %User{}}

      iex> update_user_password(user, "invalid password", %{password: ...})
      {:error, %Ecto.Changeset{}}

  """
  def update_user_password(user, password, attrs) do
    changeset =
      user
      |> User.password_changeset(attrs)
      |> User.validate_current_password(password)

    Ecto.Multi.new()
    |> Ecto.Multi.update(:user, changeset)
    |> Ecto.Multi.delete_all(:tokens, UserToken.by_user_and_contexts_query(user, :all))
    |> Repo.transaction()
    |> case do
      {:ok, %{user: user}} -> {:ok, user}
      {:error, :user, changeset, _} -> {:error, changeset}
    end
  end

  def update_user_ui_settings(user, attrs) do
    user
    |> User.ui_settings_changeset(%{ui_settings: attrs})
    |> Repo.update()
  end

  ## Session

  @doc """
  Generates a session token.
  """
  def generate_user_session_token(user) do
    {token, user_token} = UserToken.build_session_token(user)
    Repo.insert!(user_token)
    token
  end

  @doc """
  Gets the user with the given signed token.
  """
  def get_user_by_session_token(token) do
    {:ok, query} = UserToken.verify_session_token_query(token)
    Repo.one(query)
  end

  @doc """
  Deletes the signed token with the given context.
  """
  def delete_user_session_token(token) do
    Repo.delete_all(UserToken.by_token_and_context_query(token, "session"))
    :ok
  end

  ## Confirmation

  @doc ~S"""
  Delivers the confirmation email instructions to the given user.

  ## Examples

      iex> deliver_user_confirmation_instructions(user, &url(~p"/users/confirm/#{&1}"))
      {:ok, %{to: ..., body: ...}}

      iex> deliver_user_confirmation_instructions(confirmed_user, &url(~p"/users/confirm/#{&1}"))
      {:error, :already_confirmed}

  """
  def deliver_user_confirmation_instructions(%User{} = user, confirmation_url_fun)
      when is_function(confirmation_url_fun, 1) do
    if user.confirmed_at do
      {:error, :already_confirmed}
    else
      {encoded_token, user_token} = UserToken.build_email_token(user, "confirm")
      Repo.insert!(user_token)
      UserNotifier.deliver_confirmation_instructions(user, confirmation_url_fun.(encoded_token))
    end
  end

  @doc """
  Confirms a user by the given token.

  If the token matches, the user account is marked as confirmed
  and the token is deleted.
  """
  def confirm_user(token) do
    with {:ok, query} <- UserToken.verify_email_token_query(token, "confirm"),
         %User{} = user <- Repo.one(query),
         {:ok, %{user: user}} <- Repo.transaction(confirm_user_multi(user)) do
      {:ok, user}
    else
      _ -> :error
    end
  end

  defp confirm_user_multi(user) do
    Ecto.Multi.new()
    |> Ecto.Multi.update(:user, User.confirm_changeset(user))
    |> Ecto.Multi.delete_all(:tokens, UserToken.by_user_and_contexts_query(user, ["confirm"]))
  end

  ## Reset password

  @doc ~S"""
  Delivers the reset password email to the given user.

  ## Examples

      iex> deliver_user_reset_password_instructions(user, &url(~p"/users/reset_password/#{&1}"))
      {:ok, %{to: ..., body: ...}}

  """
  def deliver_user_reset_password_instructions(%User{} = user, reset_password_url_fun)
      when is_function(reset_password_url_fun, 1) do
    {encoded_token, user_token} = UserToken.build_email_token(user, "reset_password")
    Repo.insert!(user_token)
    UserNotifier.deliver_reset_password_instructions(user, reset_password_url_fun.(encoded_token))
  end

  @doc """
  Gets the user by reset password token.

  ## Examples

      iex> get_user_by_reset_password_token("validtoken")
      %User{}

      iex> get_user_by_reset_password_token("invalidtoken")
      nil

  """
  def get_user_by_reset_password_token(token) do
    with {:ok, query} <- UserToken.verify_email_token_query(token, "reset_password"),
         %User{} = user <- Repo.one(query) do
      user
    else
      _ -> nil
    end
  end

  @doc """
  Resets the user password.

  ## Examples

      iex> reset_user_password(user, %{password: "new long password", password_confirmation: "new long password"})
      {:ok, %User{}}

      iex> reset_user_password(user, %{password: "valid", password_confirmation: "not the same"})
      {:error, %Ecto.Changeset{}}

  """
  def reset_user_password(user, attrs) do
    Ecto.Multi.new()
    |> Ecto.Multi.update(:user, User.password_changeset(user, attrs))
    |> Ecto.Multi.delete_all(:tokens, UserToken.by_user_and_contexts_query(user, :all))
    |> Repo.transaction()
    |> case do
      {:ok, %{user: user}} -> {:ok, user}
      {:error, :user, changeset, _} -> {:error, changeset}
    end
  end

  def update_user_apns_device_token(user, attrs) do
    user
    |> User.apns_device_token_changeset(%{apns_device_token: attrs})
    |> Repo.update()
  end

  @doc """
  Deletes a user by anonymizing their account and deleting all sessions. Preserves messages sent.
  """
  def delete_user(user) do
    Ecto.Multi.new()
    |> User.delete_user_multi(user)
    |> Repo.transaction()
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/components/layouts/app.html.heex
```heex
<header class="px-4 sm:px-6 lg:px-8 border-b border-zinc-800">
  <div class="mx-auto max-w-2xl flex items-center justify-between py-3 text-sm">
    <div class="flex items-center gap-4">
      <a href="/">
        <img src={~p"/images/logo.svg"} width="36" />
      </a>
      <p class="bg-brand/5 text-brand rounded-full px-2 font-medium leading-6">
        v<%= Application.spec(:phoenix, :vsn) %>
      </p>
    </div>
    <div class="flex items-center gap-4 font-semibold leading-6 text-zinc-100">
      <a href="https://twitter.com/elixirphoenix" target="_blank" class="hover:text-zinc-300">
        @elixirphoenix
      </a>
      <a href="https://github.com/jtormey/lax" target="_blank" class="hover:text-zinc-300">
        GitHub
      </a>
      <a href={~p"/"} class="rounded-lg bg-zinc-800 px-2 py-1 hover:bg-zinc-700/80">
        Lax <span aria-hidden="true">&rarr;</span>
      </a>
    </div>
  </div>
</header>
<main class="py-24 px-4 sm:px-6 lg:px-8">
  <div class="mx-auto max-w-2xl">
    <.flash_group flash={@flash} />
    <%= @inner_content %>
  </div>
</main>

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/components/layouts/chat.html.heex
```heex
<div>
  <.flash_group flash={@flash} />
</div>
<div class="fixed inset-0 bg-zinc-800">
  <main class="absolute inset-2 flex bg-zinc-950 border border-zinc-700 rounded-lg overflow-hidden">
    <.sidebar>
      <.sidebar_option
        text="Home"
        icon="hero-home"
        icon_selected="hero-home-solid"
        selected={@domain == :home}
        navigate={~p"/"}
      />
      <.sidebar_option
        text="DMs"
        icon="hero-chat-bubble-left-right"
        icon_selected="hero-chat-bubble-left-right-solid"
        selected={@domain == :direct_messages}
        navigate={~p"/direct-messages"}
      />
      <.sidebar_option
        text={if @current_user, do: "User", else: "Sign in"}
        icon="hero-user"
        icon_selected="hero-user-solid"
        selected={@domain == :user}
        navigate={if @current_user, do: ~p"/users/settings", else: ~p"/users/sign-in"}
      />
      <:bottom>
        <.sidebar_option
          :if={@current_user}
          text="Sign out"
          icon="hero-arrow-left-end-on-rectangle"
          href={~p"/users/sign-out"}
          method="delete"
        />
      </:bottom>
    </.sidebar>
    <div class="flex-1 overflow-y-scroll no-scrollbar">
      <%= @inner_content %>
    </div>
  </main>
</div>

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/components/layouts/root.html.heex
```heex
<!DOCTYPE html>
<html lang="en" class="[scrollbar-gutter:stable]">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="csrf-token" content={get_csrf_token()} />
    <.live_title suffix=" · Lax">
      <%= assigns[:page_title] || "Welcome" %>
    </.live_title>
    <link rel="shortcut icon" href="/favicon.ico" />
    <link phx-track-static rel="stylesheet" href={~p"/assets/app.css"} />
    <script defer phx-track-static type="text/javascript" src={~p"/assets/app.js"}>
    </script>
  </head>
  <body class="bg-zinc-900 antialiased">
    <%= @inner_content %>
  </body>
</html>

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/components/layouts_swiftui/app.swiftui.neex
```neex
<.flash_group flash={@flash} />
<%= @inner_content %>
```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/components/layouts_swiftui/root.swiftui.neex
```neex
<.csrf_token />
<Style url={~p"/assets/app.swiftui.styles"} />
<NavigationStack style="tint(Color(.sRGB, red: 0.26, green: 0.58, blue: 0.42))">
  <%= @inner_content %>
</NavigationStack>
```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/components/core_components.ex
```ex
defmodule LaxWeb.CoreComponents do
  @moduledoc """
  Provides core UI components.

  At first glance, this module may seem daunting, but its goal is to provide
  core building blocks for your application, such as modals, tables, and
  forms. The components consist mostly of markup and are well-documented
  with doc strings and declarative assigns. You may customize and style
  them in any way you want, based on your application growth and needs.

  The default components use Tailwind CSS, a utility-first CSS framework.
  See the [Tailwind CSS documentation](https://tailwindcss.com) to learn
  how to customize them or feel free to swap in another framework altogether.

  Icons are provided by [heroicons](https://heroicons.com). See `icon/1` for usage.
  """
  use Phoenix.Component

  alias Phoenix.LiveView.JS
  import LaxWeb.Gettext

  @doc """
  Renders a modal.

  ## Examples

      <.modal id="confirm-modal">
        This is a modal.
      </.modal>

  JS commands may be passed to the `:on_cancel` to configure
  the closing/cancel event, for example:

      <.modal id="confirm" on_cancel={JS.navigate(~p"/posts")}>
        This is another modal.
      </.modal>

  """
  attr :id, :string, required: true
  attr :show, :boolean, default: false
  attr :on_cancel, JS, default: %JS{}
  slot :inner_block, required: true

  def modal(assigns) do
    ~H"""
    <div
      id={@id}
      phx-mounted={@show && show_modal(@id)}
      phx-remove={hide_modal(@id)}
      data-cancel={JS.exec(@on_cancel, "phx-remove")}
      class="relative z-50 hidden"
    >
      <div
        id={"#{@id}-bg"}
        class="bg-zinc-950/60 fixed inset-0 transition-opacity"
        aria-hidden="true"
      />
      <div
        class="fixed inset-0 overflow-y-auto"
        aria-labelledby={"#{@id}-title"}
        aria-describedby={"#{@id}-description"}
        role="dialog"
        aria-modal="true"
        tabindex="0"
      >
        <div class="flex min-h-full items-center justify-center">
          <div class="w-full max-w-xl p-4 sm:p-6 lg:py-8">
            <.focus_wrap
              id={"#{@id}-container"}
              phx-window-keydown={JS.exec("data-cancel", to: "##{@id}")}
              phx-key="escape"
              phx-click-away={JS.exec("data-cancel", to: "##{@id}")}
              class="shadow-zinc-700/10 ring-zinc-700/10 relative hidden rounded-lg bg-zinc-800 p-8 shadow-lg ring-1 transition"
            >
              <div class="absolute top-2 right-2">
                <button
                  phx-click={JS.exec("data-cancel", to: "##{@id}")}
                  type="button"
                  class="-m-1 flex-none p-1 opacity-20 hover:opacity-40"
                  aria-label={gettext("close")}
                >
                  <.icon name="hero-x-mark-solid" class="h-5 w-5 text-white" />
                </button>
              </div>
              <div id={"#{@id}-content"}>
                <%= render_slot(@inner_block) %>
              </div>
            </.focus_wrap>
          </div>
        </div>
      </div>
    </div>
    """
  end

  @doc """
  Renders flash notices.

  ## Examples

      <.flash kind={:info} flash={@flash} />
      <.flash kind={:info} phx-mounted={show("#flash")}>Welcome Back!</.flash>
  """
  attr :id, :string, doc: "the optional id of flash container"
  attr :flash, :map, default: %{}, doc: "the map of flash messages to display"
  attr :title, :string, default: nil
  attr :kind, :atom, values: [:info, :error], doc: "used for styling and flash lookup"
  attr :rest, :global, doc: "the arbitrary HTML attributes to add to the flash container"

  slot :inner_block, doc: "the optional inner block that renders the flash message"

  def flash(assigns) do
    assigns = assign_new(assigns, :id, fn -> "flash-#{assigns.kind}" end)

    ~H"""
    <div
      :if={msg = render_slot(@inner_block) || Phoenix.Flash.get(@flash, @kind)}
      id={@id}
      phx-click={JS.push("lv:clear-flash", value: %{key: @kind}) |> hide("##{@id}")}
      role="alert"
      class={[
        "fixed top-2 right-2 w-80 sm:w-96 z-50 rounded-lg p-3 ring-1",
        @kind == :info && "bg-emerald-50 text-emerald-800 ring-emerald-500 fill-cyan-900",
        @kind == :error && "bg-rose-50 text-rose-900 shadow-md ring-rose-500 fill-rose-900"
      ]}
      {@rest}
    >
      <p :if={@title} class="flex items-center gap-1.5 text-sm font-semibold leading-6">
        <.icon :if={@kind == :info} name="hero-information-circle-mini" class="h-4 w-4" />
        <.icon :if={@kind == :error} name="hero-exclamation-circle-mini" class="h-4 w-4" />
        <%= @title %>
      </p>
      <p class="mt-2 text-sm leading-5"><%= msg %></p>
      <button type="button" class="group absolute top-1 right-1 p-2" aria-label={gettext("close")}>
        <.icon name="hero-x-mark-solid" class="h-5 w-5 opacity-40 group-hover:opacity-70" />
      </button>
    </div>
    """
  end

  @doc """
  Shows the flash group with standard titles and content.

  ## Examples

      <.flash_group flash={@flash} />
  """
  attr :flash, :map, required: true, doc: "the map of flash messages"
  attr :id, :string, default: "flash-group", doc: "the optional id of flash container"

  def flash_group(assigns) do
    ~H"""
    <div id={@id}>
      <.flash kind={:info} title={gettext("Success!")} flash={@flash} />
      <.flash kind={:error} title={gettext("Error!")} flash={@flash} />
      <.flash
        id="client-error"
        kind={:error}
        title={gettext("We can't find the internet")}
        phx-disconnected={show(".phx-client-error #client-error")}
        phx-connected={hide("#client-error")}
        hidden
      >
        <%= gettext("Attempting to reconnect") %>
        <.icon name="hero-arrow-path" class="ml-1 h-3 w-3 animate-spin" />
      </.flash>

      <.flash
        id="server-error"
        kind={:error}
        title={gettext("Something went wrong!")}
        phx-disconnected={show(".phx-server-error #server-error")}
        phx-connected={hide("#server-error")}
        hidden
      >
        <%= gettext("Hang in there while we get back on track") %>
        <.icon name="hero-arrow-path" class="ml-1 h-3 w-3 animate-spin" />
      </.flash>
    </div>
    """
  end

  @doc """
  Renders a simple form.

  ## Examples

      <.simple_form for={@form} phx-change="validate" phx-submit="save">
        <.input field={@form[:email]} label="Email"/>
        <.input field={@form[:username]} label="Username" />
        <:actions>
          <.button>Save</.button>
        </:actions>
      </.simple_form>
  """
  attr :for, :any, required: true, doc: "the datastructure for the form"
  attr :as, :any, default: nil, doc: "the server side parameter to collect all input under"

  attr :rest, :global,
    include: ~w(autocomplete name rel action enctype method novalidate target multipart),
    doc: "the arbitrary HTML attributes to apply to the form tag"

  slot :inner_block, required: true
  slot :actions, doc: "the slot for form actions, such as a submit button"

  def simple_form(assigns) do
    ~H"""
    <.form :let={f} for={@for} as={@as} {@rest}>
      <div class="mt-10 space-y-8">
        <%= render_slot(@inner_block, f) %>
        <div :for={action <- @actions} class="mt-2 flex items-center justify-between gap-6">
          <%= render_slot(action, f) %>
        </div>
      </div>
    </.form>
    """
  end

  @doc """
  Renders a button.

  ## Examples

      <.button>Send!</.button>
      <.button phx-click="go" class="ml-2">Send!</.button>
  """
  attr :type, :string, default: nil
  attr :icon, :string, default: nil
  attr :icon_position, :atom, values: [:left, :right], default: :left
  attr :variant, :atom, values: [:primary, :action], default: :primary
  attr :class, :string, default: nil
  attr :rest, :global, include: ~w(disabled form name value)

  slot :inner_block, required: true

  def button(assigns) do
    ~H"""
    <button
      type={@type}
      class={[
        @class,
        variant_class(@variant),
        "flex gap-2 items-center justify-center",
        if(@icon_position == :left, do: "flex-row", else: "flex-row-reverse"),
        "phx-submit-loading:opacity-75 rounded-lg py-2 px-3",
        "text-sm font-semibold leading-6"
      ]}
      {@rest}
    >
      <.icon :if={@icon} name={@icon} class="size-4" />
      <%= render_slot(@inner_block) %>
    </button>
    """
  end

  defp variant_class(variant) do
    case variant do
      :primary ->
        "text-white active:text-white/80 bg-zinc-900 hover:bg-zinc-700 "

      :action ->
        "text-white active:text-white/80 bg-emerald-600 hover:bg-emerald-700 "
    end
  end

  attr :icon, :string, required: true
  attr :class, :string, default: nil
  attr :rest, :global, include: ~w(disabled phx-click title)

  def icon_button(assigns) do
    ~H"""
    <button
      type="button"
      class={[
        "phx-submit-loading:opacity-75 flex items-center justify-center rounded bg-zinc-900 hover:bg-zinc-700 size-5",
        "text-white active:text-white/80",
        @class
      ]}
      {@rest}
    >
      <.icon name={@icon} class="size-4" />
    </button>
    """
  end

  @doc """
  Renders an input with label and error messages.

  A `Phoenix.HTML.FormField` may be passed as argument,
  which is used to retrieve the input name, id, and values.
  Otherwise all attributes may be passed explicitly.

  ## Types

  This function accepts all HTML input types, considering that:

    * You may also set `type="select"` to render a `<select>` tag

    * `type="checkbox"` is used exclusively to render boolean values

    * For live file uploads, see `Phoenix.Component.live_file_input/1`

  See https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input
  for more information. Unsupported types, such as hidden and radio,
  are best written directly in your templates.

  ## Examples

      <.input field={@form[:email]} type="email" />
      <.input name="my-input" errors={["oh no!"]} />
  """
  attr :id, :any, default: nil
  attr :name, :any
  attr :label, :string, default: nil
  attr :value, :any

  attr :type, :string,
    default: "text",
    values: ~w(checkbox color date datetime-local email file month number password
               range search select tel text textarea time url week)

  attr :field, Phoenix.HTML.FormField,
    doc: "a form field struct retrieved from the form, for example: @form[:email]"

  attr :errors, :list, default: []
  attr :checked, :boolean, doc: "the checked flag for checkbox inputs"
  attr :prompt, :string, default: nil, doc: "the prompt for select inputs"
  attr :options, :list, doc: "the options to pass to Phoenix.HTML.Form.options_for_select/2"
  attr :multiple, :boolean, default: false, doc: "the multiple flag for select inputs"

  attr :rest, :global,
    include:
      ~w(accept autocomplete autofocus capture cols disabled form list max maxlength min minlength
                multiple pattern phx-hook placeholder readonly required rows size step)

  slot :inner_block

  def input(%{field: %Phoenix.HTML.FormField{} = field} = assigns) do
    assigns
    |> assign(field: nil, id: assigns.id || field.id)
    |> assign(:errors, Enum.map(field.errors, &translate_error(&1)))
    |> assign_new(:name, fn -> if assigns.multiple, do: field.name <> "[]", else: field.name end)
    |> assign_new(:value, fn -> field.value end)
    |> input()
  end

  def input(%{type: "checkbox"} = assigns) do
    assigns =
      assign_new(assigns, :checked, fn ->
        Phoenix.HTML.Form.normalize_value("checkbox", assigns[:value])
      end)

    ~H"""
    <div phx-feedback-for={@name}>
      <label class="flex items-center gap-4 text-sm leading-6 text-zinc-300">
        <input type="hidden" name={@name} value="false" />
        <input
          type="checkbox"
          id={@id}
          name={@name}
          value="true"
          checked={@checked}
          class="rounded bg-zinc-800 border-zinc-600 text-zinc-800 focus:ring-0"
          {@rest}
        />
        <%= @label %>
      </label>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </div>
    """
  end

  def input(%{type: "select"} = assigns) do
    ~H"""
    <div phx-feedback-for={@name}>
      <.label for={@id}><%= @label %></.label>
      <select
        id={@id}
        name={@name}
        class="mt-2 block w-full rounded-md border border-gray-300 bg-white shadow-sm focus:border-zinc-400 focus:ring-0 sm:text-sm"
        multiple={@multiple}
        {@rest}
      >
        <option :if={@prompt} value=""><%= @prompt %></option>
        <%= Phoenix.HTML.Form.options_for_select(@options, @value) %>
      </select>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </div>
    """
  end

  def input(%{type: "textarea"} = assigns) do
    ~H"""
    <div phx-feedback-for={@name}>
      <.label :if={@label} for={@id}><%= @label %></.label>
      <div class={[
        "rounded-lg border overflow-hidden",
        "phx-no-feedback:border-zinc-600 phx-no-feedback:focus-within:border-zinc-500",
        @label != nil && "mt-2",
        @errors == [] && "border-zinc-600 focus-within:border-zinc-500",
        @errors != [] && "border-rose-400 focus-within:border-rose-400"
      ]}>
        <div class="bg-zinc-800">
          <textarea
            id={@id}
            name={@name}
            rows={1}
            class="block w-full bg-zinc-800 border-none rounded-t-lg text-zinc-300 focus:ring-0 sm:text-sm sm:leading-6 resize-none"
            {@rest}
          ><%= Phoenix.HTML.Form.normalize_value("textarea", @value) %></textarea>
          <%= render_slot(@inner_block) %>
        </div>
        <div :if={@errors != []} class="py-1 px-2 border-t border-dashed border-rose-400">
          <.error :for={msg <- @errors} size={:xs}><%= msg %></.error>
        </div>
      </div>
    </div>
    """
  end

  # All other inputs text, datetime-local, url, password, etc. are handled here...
  def input(assigns) do
    ~H"""
    <div phx-feedback-for={@name}>
      <.label for={@id}><%= @label %></.label>
      <input
        type={@type}
        name={@name}
        id={@id}
        value={Phoenix.HTML.Form.normalize_value(@type, @value)}
        class={[
          "mt-2 block w-full rounded-lg text-zinc-300 bg-zinc-800 focus:ring-0 sm:text-sm sm:leading-4",
          "phx-no-feedback:border-zinc-600 phx-no-feedback:focus:border-zinc-500",
          @errors == [] && "border-zinc-600 focus:border-zinc-500",
          @errors != [] && "border-rose-400 focus:border-rose-400"
        ]}
        {@rest}
      />
      <.error :for={msg <- @errors}><%= msg %></.error>
    </div>
    """
  end

  @doc """
  Renders a label.
  """
  attr :for, :string, default: nil
  slot :inner_block, required: true

  def label(assigns) do
    ~H"""
    <label for={@for} class="block text-sm font-semibold leading-6 text-zinc-300">
      <%= render_slot(@inner_block) %>
    </label>
    """
  end

  @doc """
  Generates a generic error message.
  """
  attr :size, :atom, values: [:xs, :sm], default: :sm
  slot :inner_block, required: true

  def error(assigns) do
    {class, icon_class} =
      case assigns.size do
        :xs -> {"gap-1 text-xs leading-4", "h-4 w-4"}
        :sm -> {"gap-3 text-sm leading-6 mt-3", "h-5 w-5"}
      end

    assigns = assign(assigns, class: class, icon_class: icon_class)

    ~H"""
    <p class={[@class, "flex items-center text-rose-600 phx-no-feedback:hidden"]}>
      <.icon name="hero-exclamation-circle-mini" class={@icon_class} />
      <%= render_slot(@inner_block) %>
    </p>
    """
  end

  @doc """
  Renders a header with title.
  """
  attr :class, :string, default: nil

  slot :inner_block, required: true
  slot :subtitle
  slot :actions

  def header(assigns) do
    ~H"""
    <header class={[@actions != [] && "flex items-center justify-between gap-6", @class]}>
      <div>
        <h1 class="text-lg font-semibold leading-none text-white truncate">
          <%= render_slot(@inner_block) %>
        </h1>
        <p :if={@subtitle != []} class="mt-2 text-sm leading-6 text-zinc-200">
          <%= render_slot(@subtitle) %>
        </p>
      </div>
      <div class="flex-none"><%= render_slot(@actions) %></div>
    </header>
    """
  end

  @doc ~S"""
  Renders a table with generic styling.

  ## Examples

      <.table id="users" rows={@users}>
        <:col :let={user} label="id"><%= user.id %></:col>
        <:col :let={user} label="username"><%= user.username %></:col>
      </.table>
  """
  attr :id, :string, required: true
  attr :rows, :list, required: true
  attr :row_id, :any, default: nil, doc: "the function for generating the row id"
  attr :row_click, :any, default: nil, doc: "the function for handling phx-click on each row"

  attr :row_item, :any,
    default: &Function.identity/1,
    doc: "the function for mapping each row before calling the :col and :action slots"

  slot :col, required: true do
    attr :label, :string
  end

  slot :action, doc: "the slot for showing user actions in the last table column"

  def table(assigns) do
    assigns =
      with %{rows: %Phoenix.LiveView.LiveStream{}} <- assigns do
        assign(assigns, row_id: assigns.row_id || fn {id, _item} -> id end)
      end

    ~H"""
    <div class="overflow-y-auto px-4 sm:overflow-visible sm:px-0">
      <table class="w-[40rem] mt-11 sm:w-full">
        <thead class="text-sm text-left leading-6 text-zinc-500">
          <tr>
            <th :for={col <- @col} class="p-0 pb-4 pr-6 font-normal"><%= col[:label] %></th>
            <th :if={@action != []} class="relative p-0 pb-4">
              <span class="sr-only"><%= gettext("Actions") %></span>
            </th>
          </tr>
        </thead>
        <tbody
          id={@id}
          phx-update={match?(%Phoenix.LiveView.LiveStream{}, @rows) && "stream"}
          class="relative divide-y divide-zinc-100 border-t border-zinc-200 text-sm leading-6 text-zinc-700"
        >
          <tr :for={row <- @rows} id={@row_id && @row_id.(row)} class="group hover:bg-zinc-50">
            <td
              :for={{col, i} <- Enum.with_index(@col)}
              phx-click={@row_click && @row_click.(row)}
              class={["relative p-0", @row_click && "hover:cursor-pointer"]}
            >
              <div class="block py-4 pr-6">
                <span class="absolute -inset-y-px right-0 -left-4 group-hover:bg-zinc-50 sm:rounded-l-xl" />
                <span class={["relative", i == 0 && "font-semibold text-zinc-900"]}>
                  <%= render_slot(col, @row_item.(row)) %>
                </span>
              </div>
            </td>
            <td :if={@action != []} class="relative w-14 p-0">
              <div class="relative whitespace-nowrap py-4 text-right text-sm font-medium">
                <span class="absolute -inset-y-px -right-4 left-0 group-hover:bg-zinc-50 sm:rounded-r-xl" />
                <span
                  :for={action <- @action}
                  class="relative ml-4 font-semibold leading-6 text-zinc-900 hover:text-zinc-700"
                >
                  <%= render_slot(action, @row_item.(row)) %>
                </span>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    """
  end

  @doc """
  Renders a data list.

  ## Examples

      <.list>
        <:item title="Title"><%= @post.title %></:item>
        <:item title="Views"><%= @post.views %></:item>
      </.list>
  """
  slot :item, required: true do
    attr :title, :string, required: true
  end

  def list(assigns) do
    ~H"""
    <div class="mt-14">
      <dl class="-my-4 divide-y divide-zinc-100">
        <div :for={item <- @item} class="flex gap-4 py-4 text-sm leading-6 sm:gap-8">
          <dt class="w-1/4 flex-none text-zinc-500"><%= item.title %></dt>
          <dd class="text-zinc-700"><%= render_slot(item) %></dd>
        </div>
      </dl>
    </div>
    """
  end

  @doc """
  Renders a back navigation link.

  ## Examples

      <.back navigate={~p"/posts"}>Back to posts</.back>
  """
  attr :navigate, :any, required: true
  slot :inner_block, required: true

  def back(assigns) do
    ~H"""
    <div class="mt-16">
      <.link
        navigate={@navigate}
        class="text-sm font-semibold leading-6 text-zinc-900 hover:text-zinc-700"
      >
        <.icon name="hero-arrow-left-solid" class="h-3 w-3" />
        <%= render_slot(@inner_block) %>
      </.link>
    </div>
    """
  end

  @doc """
  Renders a [Heroicon](https://heroicons.com).

  Heroicons come in three styles – outline, solid, and mini.
  By default, the outline style is used, but solid and mini may
  be applied by using the `-solid` and `-mini` suffix.

  You can customize the size and colors of the icons by setting
  width, height, and background color classes.

  Icons are extracted from the `deps/heroicons` directory and bundled within
  your compiled app.css by the plugin in your `assets/tailwind.config.js`.

  ## Examples

      <.icon name="hero-x-mark-solid" />
      <.icon name="hero-arrow-path" class="ml-1 w-3 h-3 animate-spin" />
  """
  attr :name, :string, required: true
  attr :class, :any, default: nil

  def icon(%{name: "hero-" <> _} = assigns) do
    ~H"""
    <span class={[@name, @class]} />
    """
  end

  ## JS Commands

  def show(js \\ %JS{}, selector) do
    JS.show(js,
      to: selector,
      transition:
        {"transition-all transform ease-out duration-300",
         "opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95",
         "opacity-100 translate-y-0 sm:scale-100"}
    )
  end

  def hide(js \\ %JS{}, selector) do
    JS.hide(js,
      to: selector,
      time: 200,
      transition:
        {"transition-all transform ease-in duration-200",
         "opacity-100 translate-y-0 sm:scale-100",
         "opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"}
    )
  end

  def show_modal(js \\ %JS{}, id) when is_binary(id) do
    js
    |> JS.show(to: "##{id}")
    |> JS.show(
      to: "##{id}-bg",
      transition: {"transition-all transform ease-out duration-300", "opacity-0", "opacity-100"}
    )
    |> show("##{id}-container")
    |> JS.add_class("overflow-hidden", to: "body")
    |> JS.focus_first(to: "##{id}-content")
  end

  def hide_modal(js \\ %JS{}, id) do
    js
    |> JS.hide(
      to: "##{id}-bg",
      transition: {"transition-all transform ease-in duration-200", "opacity-100", "opacity-0"}
    )
    |> hide("##{id}-container")
    |> JS.hide(to: "##{id}", transition: {"block", "block", "hidden"})
    |> JS.remove_class("overflow-hidden", to: "body")
    |> JS.pop_focus()
  end

  @doc """
  Translates an error message using gettext.
  """
  def translate_error({msg, opts}) do
    # When using gettext, we typically pass the strings we want
    # to translate as a static argument:
    #
    #     # Translate the number of files with plural rules
    #     dngettext("errors", "1 file", "%{count} files", count)
    #
    # However the error messages in our forms and APIs are generated
    # dynamically, so we need to translate them by calling Gettext
    # with our gettext backend as first argument. Translations are
    # available in the errors.po file (as we use the "errors" domain).
    if count = opts[:count] do
      Gettext.dngettext(LaxWeb.Gettext, "errors", msg, msg, count, opts)
    else
      Gettext.dgettext(LaxWeb.Gettext, "errors", msg, opts)
    end
  end

  @doc """
  Translates the errors for a field from a keyword list of errors.
  """
  def translate_errors(errors, field) when is_list(errors) do
    for {^field, {msg, opts}} <- errors, do: translate_error({msg, opts})
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/components/core_components.swiftui.ex
```ex
defmodule LaxWeb.CoreComponents.SwiftUI do
  @moduledoc """
  Provides core UI components built for SwiftUI.

  This file contains feature parity components to your applications's CoreComponent module.
  The goal is to retain a common API for fast prototyping. Leveraging your existing knowledge
  of the `LaxWeb.CoreComponents` functions you should expect identical functionality for similarly named
  components between web and native. That means utilizing your existing `handle_event/3` functions to manage state
  and stay focused on adding new templates for your native applications.

  The default components use `LiveViewNative.SwiftUI.UtilityStyles`, a generated styling syntax
  that allows you to call nearly any modifier. Refer to the documentation in `LiveViewNative.SwiftUI` for more information.

  Icons are referenced by a system name. Read more about the [Xcode Asset Manager](https://developer.apple.com/documentation/xcode/asset-management)
  to learn how to include different assets in your LiveView Native applications. In addition, you can also use [SF Symbols](https://developer.apple.com/sf-symbols/).
  On any MacOS open Spotlight and search `SF Symbols`. The catalog application will provide a reference name that can be used. All SF Symbols
  are incuded with all SwiftUI applications.

  Most of this documentation was "borrowed" from the analog Phoenix generated file to ensure this project is expressing the same behavior.
  """

  use LiveViewNative.Component

  import LiveViewNative.LiveForm.Component

  @doc """
  Renders an input with label and error messages.

  A `Phoenix.HTML.FormField` may be passed as argument,
  which is used to retrieve the input name, id, and values.
  Otherwise all attributes may be passed explicitly.

  ## Types

  This function accepts all SwiftUI input types, considering that:

    * You may also set `type="Picker"` to render a `<Picker>` tag

    * `type="Toggle"` is used exclusively to render boolean values

  ## Examples

      <Group style="keyboardType(.emailAddress)">
        <.input field={@form[:email]} type="TextField" />
        <.input name="my-input" errors={["oh no!"]} />
      </Group>

  [INSERT LVATTRDOCS]
  """
  @doc type: :component

  attr :id, :any, default: nil
  attr :name, :any
  attr :label, :string, default: nil
  attr :value, :any

  attr :type, :string,
    default: "TextField",
    values:
      ~w(TextFieldLink DatePicker MultiDatePicker Picker SecureField Slider Stepper TextEditor TextField Toggle hidden)

  attr :field, Phoenix.HTML.FormField,
    doc: "a form field struct retrieved from the form, for example: `@form[:email]`"

  attr :errors, :list, default: []
  attr :checked, :boolean, doc: "the checked flag for checkbox inputs"
  attr :prompt, :string, default: nil, doc: "the prompt for select inputs"
  attr :options, :list, doc: "the options to pass to `Phoenix.HTML.Form.options_for_select/2`"
  attr :multiple, :boolean, default: false, doc: "the multiple flag for select inputs"

  attr :min, :any, default: nil
  attr :max, :any, default: nil

  attr :placeholder, :string, default: nil

  attr :readonly, :boolean, default: false

  attr :autocomplete, :string,
    default: "on",
    values: ~w(on off)

  attr :rest, :global, include: ~w(disabled step axis)

  slot :inner_block

  def input(%{field: %Phoenix.HTML.FormField{} = field} = assigns) do
    assigns
    |> assign(field: nil, id: assigns.id || field.id)
    |> assign(:errors, Enum.map(field.errors, &translate_error(&1)))
    |> assign_new(:name, fn -> if assigns.multiple, do: field.name <> "[]", else: field.name end)
    |> assign_new(:value, fn -> field.value end)
    |> assign(
      :rest,
      Map.put(
        assigns.rest,
        :style,
        [
          Map.get(assigns.rest, :style, ""),
          if(assigns.readonly or Map.get(assigns.rest, :disabled, false),
            do: "disabled(true)",
            else: ""
          ),
          if(assigns.autocomplete == "off",
            do: "textInputAutocapitalization(.never) autocorrectionDisabled()",
            else: ""
          )
        ]
        |> Enum.join(" ")
      )
    )
    |> input()
  end

  def input(%{type: "hidden"} = assigns) do
    ~LVN"""
    <LiveHiddenField id={@id} name={@name} value={@value} {@rest} />
    """
  end

  def input(%{type: "TextFieldLink"} = assigns) do
    ~LVN"""
    <VStack alignment="leading">
      <LabeledContent>
        <Text template="label"><%= @label %></Text>
        <TextFieldLink id={@id} name={@name} value={@value} prompt={@prompt} {@rest}>
          <%= @label %>
        </TextFieldLink>
      </LabeledContent>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </VStack>
    """
  end

  def input(%{type: "DatePicker"} = assigns) do
    ~LVN"""
    <VStack alignment="leading">
      <DatePicker id={@id} name={@name} selection={@value} {@rest}>
        <%= @label %>
      </DatePicker>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </VStack>
    """
  end

  def input(%{type: "MultiDatePicker"} = assigns) do
    ~LVN"""
    <VStack alignment="leading">
      <LabeledContent>
        <Text template="label"><%= @label %></Text>
        <MultiDatePicker id={@id} name={@name} selection={@value} {@rest}><%= @label %></MultiDatePicker>
      </LabeledContent>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </VStack>
    """
  end

  def input(%{type: "Picker"} = assigns) do
    ~LVN"""
    <VStack alignment="leading">
      <Picker id={@id} name={@name} selection={@value} {@rest}>
        <Text template="label"><%= @label %></Text>
        <Text
          :for={{name, value} <- @options}
          tag={value}
        >
          <%= name %>
        </Text>
      </Picker>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </VStack>
    """
  end

  def input(%{type: "Slider"} = assigns) do
    ~LVN"""
    <VStack alignment="leading">
      <LabeledContent>
        <Text template="label"><%= @label %></Text>
        <Slider id={@id} name={@name} value={@value} lowerBound={@min} upperBound={@max} {@rest}><%= @label %></Slider>
      </LabeledContent>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </VStack>
    """
  end

  def input(%{type: "Stepper"} = assigns) do
    ~LVN"""
    <VStack alignment="leading">
      <LabeledContent>
        <Text template="label"><%= @label %></Text>
        <Stepper id={@id} name={@name} value={@value} {@rest}></Stepper>
      </LabeledContent>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </VStack>
    """
  end

  def input(%{type: "TextEditor"} = assigns) do
    ~LVN"""
    <VStack alignment="leading">
      <LabeledContent>
        <Text template="label"><%= @label %></Text>
        <TextEditor id={@id} name={@name} text={@value} {@rest} />
      </LabeledContent>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </VStack>
    """
  end

  def input(%{type: "TextField"} = assigns) do
    ~LVN"""
    <VStack alignment="leading">
      <TextField id={@id} name={@name} text={@value} prompt={@prompt} {@rest}><%= @placeholder || @label %></TextField>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </VStack>
    """
  end

  def input(%{type: "SecureField"} = assigns) do
    ~LVN"""
    <VStack alignment="leading">
      <SecureField id={@id} name={@name} text={@value} prompt={@prompt} {@rest}><%= @placeholder || @label %></SecureField>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </VStack>
    """
  end

  def input(%{type: "Toggle"} = assigns) do
    ~LVN"""
    <VStack alignment="leading">
      <LabeledContent>
        <Text template="label"><%= @label %></Text>
        <Toggle id={@id} name={@name} isOn={Map.get(assigns, :checked, Map.get(assigns, :value))} {@rest}></Toggle>
      </LabeledContent>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </VStack>
    """
  end

  @doc """
  Generates a generic error message.
  """
  @doc type: :component
  slot :inner_block, required: true

  def error(assigns) do
    ~LVN"""
    <Group style="font(.caption); foregroundStyle(.red)">
      <%= render_slot(@inner_block) %>
    </Group>
    """
  end

  @doc """
  Renders a header with title.

  [INSERT LVATTRDOCS]
  """
  @doc type: :component

  slot :inner_block, required: true
  slot :subtitle

  slot :actions do
    attr :placement, :string
  end

  def header(assigns) do
    ~LVN"""
    <VStack style={[
      "navigationTitle(:title)",
      "toolbar(content: :toolbar)"
    ]}>
      <Text template="title">
        <%= render_slot(@inner_block) %>
      </Text>
      <Text :if={@subtitle != []} template="subtitle">
        <%= render_slot(@subtitle) %>
      </Text>
      <ToolbarItemGroup
        :for={action <- @actions}
        template="toolbar"
        placement={Map.get(action, :placement, "automatic")}
      >
        <%= render_slot(action) %>
      </ToolbarItemGroup>
      <ToolbarItemGroup template="toolbar" :if={Enum.empty?(@actions)} />
    </VStack>
    """
  end

  @doc """
  Renders a modal.

  ## Examples

      <.modal show={@show} id="confirm-modal">
        This is a modal.
      </.modal>

  An event name may be passed to the `:on_cancel` to configure
  the closing/cancel event, for example:

      <.modal show={@show} id="confirm" on_cancel="toggle-show">
        This is another modal.
      </.modal>

  """
  attr :id, :string, required: true
  attr :show, :boolean, default: false
  attr :on_cancel, :string, default: nil
  slot :inner_block, required: true

  def modal(assigns) do
    ~LVN"""
    <VStack
      id={@id}
      :if={@show}
      style='sheet(isPresented: attr("presented"), content: :content)'
      presented={@show}
      phx-change={@on_cancel}
    >
      <VStack template="content">
        <%= render_slot(@inner_block) %>
      </VStack>
    </VStack>
    """
  end

  @doc """
  Renders flash notices.

  ## Examples

      <.flash kind={:info} flash={@flash} />
      <.flash kind={:info} phx-mounted={show("#flash")}>Welcome Back!</.flash>
  """
  attr :id, :string, doc: "the optional id of flash container"
  attr :flash, :map, default: %{}, doc: "the map of flash messages to display"
  attr :title, :string, default: nil
  attr :kind, :atom, values: [:info, :error], doc: "used for styling and flash lookup"
  attr :rest, :global, doc: "the arbitrary attributes to add to the flash container"

  slot :inner_block, doc: "the optional inner block that renders the flash message"

  def flash(assigns) do
    assigns = assign_new(assigns, :id, fn -> "flash-#{assigns.kind}" end)

    ~LVN"""
    <% msg = render_slot(@inner_block) || Phoenix.Flash.get(@flash, @kind) %>
    <VStack
      :if={msg != nil}
      style={[
        "hidden()",
        ~s[alert(attr("title"), isPresented: attr("presented"), actions: :actions, message: :message)]
      ]}
      title={@title}
      presented={msg != nil}
      id={@id}
      {@rest}
    >
      <Text template="message"><%= msg %></Text>
      <Button template="actions" phx-click="lv:clear-flash" phx-value-key={@kind}>Ok</Button>
    </VStack>
    """
  end

  @doc """
  Shows the flash group with standard titles and content.

  ## Examples

      <.flash_group flash={@flash} />
  """
  attr :flash, :map, required: true, doc: "the map of flash messages"
  attr :id, :string, default: "flash-group", doc: "the optional id of flash container"

  def flash_group(assigns) do
    ~LVN"""
    <Group id={@id}>
      <.flash kind={:info} title={"Success!"} flash={@flash} />
      <.flash kind={:error} title={"Error!"} flash={@flash} />
    </Group>
    """
  end

  @doc """
  Renders a simple form.

  ## Examples

      <.simple_form for={@form} phx-change="validate" phx-submit="save">
        <.input field={@form[:email]} label="Email"/>
        <.input field={@form[:username]} label="Username" />
        <:actions>
          <.button type="submit">Save</.button>
        </:actions>
      </.simple_form>

  [INSERT LVATTRDOCS]
  """
  @doc type: :component

  attr :for, :any, required: true, doc: "the datastructure for the form"
  attr :as, :any, default: nil, doc: "the server side parameter to collect all input under"

  attr :rest, :global,
    include: ~w(autocomplete name rel action enctype method novalidate target multipart),
    doc: "the arbitrary attributes to apply to the form tag"

  slot :inner_block, required: true
  slot :actions, doc: "the slot for form actions, such as a submit button"

  def simple_form(assigns) do
    ~LVN"""
    <.form :let={f} for={@for} as={@as} {@rest}>
      <Form>
        <%= render_slot(@inner_block, f) %>
        <Section>
          <%= for action <- @actions do %>
            <%= render_slot(action, f) %>
          <% end %>
        </Section>
      </Form>
    </.form>
    """
  end

  @doc """
  Renders a button.

  ## Examples

      <.button type="submit">Send!</.button>
      <.button phx-click="go">Send!</.button>
  """
  @doc type: :component

  attr :type, :string, default: nil
  attr :rest, :global

  slot :inner_block, required: true

  def button(%{type: "submit"} = assigns) do
    ~LVN"""
    <Section>
      <LiveSubmitButton style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.large)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"
      ]} {@rest}>
        <Group style={[
          "frame(maxWidth: .infinity)",
          "bold(true)"
        ]}>
          <%= render_slot(@inner_block) %>
        </Group>
      </LiveSubmitButton>
    </Section>
    """
  end

  def button(assigns) do
    ~LVN"""
    <Button {@rest}>
      <%= render_slot(@inner_block) %>
    </Button>
    """
  end

  @doc ~S"""
  Renders a table with generic styling.

  ## Examples

      <.table id="users" rows={@users}>
        <:col :let={user} label="id"><%= user.id %></:col>
        <:col :let={user} label="username"><%= user.username %></:col>
      </.table>
  """
  @doc type: :component

  attr :id, :string, required: true
  attr :rows, :list, required: true
  attr :row_id, :any, default: nil, doc: "the function for generating the row id"

  attr :row_item, :any,
    default: &Function.identity/1,
    doc: "the function for mapping each row before calling the :col and :action slots"

  slot :col, required: true do
    attr :label, :string
  end

  slot :action, doc: "the slot for showing user actions in the last table column"

  def table(assigns) do
    ~LVN"""
    <Table id={@id}>
      <Group template="columns">
        <TableColumn :for={col <- @col}><%= col[:label] %></TableColumn>
        <TableColumn :if={@action != []} />
      </Group>
      <Group template="rows">
        <TableRow
          :for={{row, i} <- Enum.with_index(@rows)}
          id={(@row_id && @row_id.(row)) || i}
        >
          <VStack :for={col <- @col}>
            <%= render_slot(col, @row_item.(row)) %>
          </VStack>
          <HStack :if={@action != []}>
            <%= for action <- @action do %>
              <%= render_slot(action, @row_item.(row)) %>
            <% end %>
          </HStack>
        </TableRow>
      </Group>
    </Table>
    """
  end

  @doc """
  Renders a data list.

  ## Examples

      <.list>
        <:item title="Title"><%= @post.title %></:item>
        <:item title="Views"><%= @post.views %></:item>
      </.list>
  """
  slot :item, required: true do
    attr :title, :string, required: true
  end

  def list(assigns) do
    ~LVN"""
    <List>
      <LabeledContent :for={item <- @item}>
        <Text template="label"><%= item.title %></Text>
        <%= render_slot(item) %>
      </LabeledContent>
    </List>
    """
  end

  @doc """
  Renders a system image from the Asset Manager in Xcode
  or from SF Symbols.

  ## Examples

      <.icon name="xmark.diamond" />
  """
  @doc type: :component

  attr :name, :string, required: true
  attr :rest, :global

  def icon(assigns) do
    ~LVN"""
    <Image systemName={@name} {@rest} />
    """
  end

  @doc """
  Renders an image from a url

  Will render an [`AsyncImage`](https://developer.apple.com/documentation/swiftui/asyncimage)
  You can customize the lifecycle states of with the slots.
  """

  attr :url, :string, required: true
  attr :rest, :global

  slot :empty,
    doc: """
    The empty state that will render before has successfully been downloaded.

        <.image url={~p"/assets/images/logo.png"}>
          <:empty>
            <Image systemName="myloading.spinner" />
          </:empty>
        </.image>

    [See SwiftUI docs](https://developer.apple.com/documentation/swiftui/asyncimagephase/success(_:))
    """

  slot :success,
    doc: """
    The success state that will render when the image has successfully been downloaded.

        <.image url={~p"/assets/images/logo.png"}>
          <:success class="main-logo"/>
        </.image>

    [See SwiftUI docs](https://developer.apple.com/documentation/swiftui/asyncimagephase/success(_:))
    """ do
    attr :class, :string
    attr :style, :string
  end

  slot :failure,
    doc: """
      The failure state that will render when the image fails to downloaded.

          <.image url={~p"/assets/images/logo.png"}>
            <:failure class="image-fail"/>
          </.image>

      [See SwiftUI docs](https://developer.apple.com/documentation/swiftui/asyncimagephase/failure(_:))

    """ do
    attr :class, :string
    attr :style, :string
  end

  def image(assigns) do
    ~LVN"""
    <AsyncImage url={@url} {@rest}>
      <Group template="phase.empty" :if={@empty != []}>
        <%= render_slot(@empty) %>
      </Group>
      <.image_success slot={@success} />
      <.image_failure slot={@failure} />
    </AsyncImage>
    """
  end

  defp image_success(%{slot: [%{inner_block: nil}]} = assigns) do
    ~LVN"""
    <AsyncImage image template="phase.success" :for={slot <- @slot} class={Map.get(slot, :class)} {%{ style: Map.get(slot, :style) }} />
    """
  end

  defp image_success(assigns) do
    ~LVN"""
    <Group template="phase.success" :if={@slot != []}>
      <%= render_slot(@slot) %>
    </Group>
    """
  end

  defp image_failure(%{slot: [%{inner_block: nil}]} = assigns) do
    ~LVN"""
    <AsyncImage error template="phase.failure" :for={slot <- @slot} class={Map.get(slot, :class)} {%{ style: Map.get(slot, :style) }} />
    """
  end

  defp image_failure(assigns) do
    ~LVN"""
    <Group template="phase.failure" :if={@slot != []}>
      <%= render_slot(@slot) %>
    </Group>
    """
  end

  @doc """
  Translates an error message using gettext.
  """
  def translate_error({msg, opts}) do
    # When using gettext, we typically pass the strings we want
    # to translate as a static argument:
    #
    #     # Translate the number of files with plural rules
    #     dngettext("errors", "1 file", "%{count} files", count)
    #
    # However the error messages in our forms and APIs are generated
    # dynamically, so we need to translate them by calling Gettext
    # with our gettext backend as first argument. Translations are
    # available in the errors.po file (as we use the "errors" domain).
    if count = opts[:count] do
      Gettext.dngettext(LaxWeb.Gettext, "errors", msg, msg, count, opts)
    else
      Gettext.dgettext(LaxWeb.Gettext, "errors", msg, opts)
    end
  end

  @doc """
  Translates the errors for a field from a keyword list of errors.
  """
  def translate_errors(errors, field) when is_list(errors) do
    for {^field, {msg, opts}} <- errors, do: translate_error({msg, opts})
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/components/layouts.ex
```ex
defmodule LaxWeb.Layouts do
  @moduledoc """
  This module holds different layouts used by your application.

  See the `layouts` directory for all templates available.
  The "root" layout is a skeleton rendered as part of the
  application router. The "app" layout is set as the default
  layout on both `use LaxWeb, :controller` and
  `use LaxWeb, :live_view`.
  """
  use LaxWeb, :html

  embed_templates "layouts/*"

  ## Components

  slot :bottom, default: []
  slot :inner_block

  def sidebar(assigns) do
    ~H"""
    <div class="w-16 flex flex-col border-r border-zinc-700 py-4 space-y-4">
      <%= render_slot(@inner_block) %>
      <div :if={@bottom != []} class="flex-1" />
      <%= render_slot(@bottom) %>
    </div>
    """
  end

  attr :text, :string, required: true
  attr :icon, :string, required: true
  attr :icon_selected, :string
  attr :selected, :boolean, default: false
  attr :rest, :global, include: ~w(href method navigate patch)

  def sidebar_option(assigns) do
    ~H"""
    <.link {@rest} class="flex flex-col gap-px items-center group">
      <div class={[
        "size-8 flex items-center justify-center rounded-lg group-hover:bg-zinc-500",
        @selected && "bg-zinc-500"
      ]}>
        <.icon
          name={if @selected, do: @icon_selected, else: @icon}
          class="text-white size-4 group-hover:size-5 transition-all"
        />
      </div>
      <span class="text-2xs text-white font-semibold"><%= @text %></span>
    </.link>
    """
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/components/layouts.swiftui.ex
```ex
defmodule LaxWeb.Layouts.SwiftUI do
  use LaxNative, [:layout, format: :swiftui]

  embed_templates "layouts_swiftui/*"
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/controllers/page_html/home.html.heex
```heex
<.flash_group flash={@flash} />
<div class="left-[40rem] fixed inset-y-0 right-0 z-0 hidden lg:block xl:left-[50rem]">
  <svg
    viewBox="0 0 1480 957"
    fill="none"
    aria-hidden="true"
    class="absolute inset-0 h-full w-full"
    preserveAspectRatio="xMinYMid slice"
  >
    <path fill="#EE7868" d="M0 0h1480v957H0z" />
    <path
      d="M137.542 466.27c-582.851-48.41-988.806-82.127-1608.412 658.2l67.39 810 3083.15-256.51L1535.94-49.622l-98.36 8.183C1269.29 281.468 734.115 515.799 146.47 467.012l-8.928-.742Z"
      fill="#FF9F92"
    />
    <path
      d="M371.028 528.664C-169.369 304.988-545.754 149.198-1361.45 665.565l-182.58 792.025 3014.73 694.98 389.42-1689.25-96.18-22.171C1505.28 697.438 924.153 757.586 379.305 532.09l-8.277-3.426Z"
      fill="#FA8372"
    />
    <path
      d="M359.326 571.714C-104.765 215.795-428.003-32.102-1349.55 255.554l-282.3 1224.596 3047.04 722.01 312.24-1354.467C1411.25 1028.3 834.355 935.995 366.435 577.166l-7.109-5.452Z"
      fill="#E96856"
      fill-opacity=".6"
    />
    <path
      d="M1593.87 1236.88c-352.15 92.63-885.498-145.85-1244.602-613.557l-5.455-7.105C-12.347 152.31-260.41-170.8-1225-131.458l-368.63 1599.048 3057.19 704.76 130.31-935.47Z"
      fill="#C42652"
      fill-opacity=".2"
    />
    <path
      d="M1411.91 1526.93c-363.79 15.71-834.312-330.6-1085.883-863.909l-3.822-8.102C72.704 125.95-101.074-242.476-1052.01-408.907l-699.85 1484.267 2837.75 1338.01 326.02-886.44Z"
      fill="#A41C42"
      fill-opacity=".2"
    />
    <path
      d="M1116.26 1863.69c-355.457-78.98-720.318-535.27-825.287-1115.521l-1.594-8.816C185.286 163.833 112.786-237.016-762.678-643.898L-1822.83 608.665 571.922 2635.55l544.338-771.86Z"
      fill="#A41C42"
      fill-opacity=".2"
    />
  </svg>
</div>
<div class="px-4 py-10 sm:px-6 sm:py-28 lg:px-8 xl:px-28 xl:py-32">
  <div class="mx-auto max-w-xl lg:mx-0">
    <svg viewBox="0 0 71 48" class="h-12" aria-hidden="true">
      <path
        d="m26.371 33.477-.552-.1c-3.92-.729-6.397-3.1-7.57-6.829-.733-2.324.597-4.035 3.035-4.148 1.995-.092 3.362 1.055 4.57 2.39 1.557 1.72 2.984 3.558 4.514 5.305 2.202 2.515 4.797 4.134 8.347 3.634 3.183-.448 5.958-1.725 8.371-3.828.363-.316.761-.592 1.144-.886l-.241-.284c-2.027.63-4.093.841-6.205.735-3.195-.16-6.24-.828-8.964-2.582-2.486-1.601-4.319-3.746-5.19-6.611-.704-2.315.736-3.934 3.135-3.6.948.133 1.746.56 2.463 1.165.583.493 1.143 1.015 1.738 1.493 2.8 2.25 6.712 2.375 10.265-.068-5.842-.026-9.817-3.24-13.308-7.313-1.366-1.594-2.7-3.216-4.095-4.785-2.698-3.036-5.692-5.71-9.79-6.623C12.8-.623 7.745.14 2.893 2.361 1.926 2.804.997 3.319 0 4.149c.494 0 .763.006 1.032 0 2.446-.064 4.28 1.023 5.602 3.024.962 1.457 1.415 3.104 1.761 4.798.513 2.515.247 5.078.544 7.605.761 6.494 4.08 11.026 10.26 13.346 2.267.852 4.591 1.135 7.172.555ZM10.751 3.852c-.976.246-1.756-.148-2.56-.962 1.377-.343 2.592-.476 3.897-.528-.107.848-.607 1.306-1.336 1.49Zm32.002 37.924c-.085-.626-.62-.901-1.04-1.228-1.857-1.446-4.03-1.958-6.333-2-1.375-.026-2.735-.128-4.031-.61-.595-.22-1.26-.505-1.244-1.272.015-.78.693-1 1.31-1.184.505-.15 1.026-.247 1.6-.382-1.46-.936-2.886-1.065-4.787-.3-2.993 1.202-5.943 1.06-8.926-.017-1.684-.608-3.179-1.563-4.735-2.408l-.043.03a2.96 2.96 0 0 0 .04-.029c-.038-.117-.107-.12-.197-.054l.122.107c1.29 2.115 3.034 3.817 5.004 5.271 3.793 2.8 7.936 4.471 12.784 3.73A66.714 66.714 0 0 1 37 40.877c1.98-.16 3.866.398 5.753.899Zm-9.14-30.345c-.105-.076-.206-.266-.42-.069 1.745 2.36 3.985 4.098 6.683 5.193 4.354 1.767 8.773 2.07 13.293.51 3.51-1.21 6.033-.028 7.343 3.38.19-3.955-2.137-6.837-5.843-7.401-2.084-.318-4.01.373-5.962.94-5.434 1.575-10.485.798-15.094-2.553Zm27.085 15.425c.708.059 1.416.123 2.124.185-1.6-1.405-3.55-1.517-5.523-1.404-3.003.17-5.167 1.903-7.14 3.972-1.739 1.824-3.31 3.87-5.903 4.604.043.078.054.117.066.117.35.005.699.021 1.047.005 3.768-.17 7.317-.965 10.14-3.7.89-.86 1.685-1.817 2.544-2.71.716-.746 1.584-1.159 2.645-1.07Zm-8.753-4.67c-2.812.246-5.254 1.409-7.548 2.943-1.766 1.18-3.654 1.738-5.776 1.37-.374-.066-.75-.114-1.124-.17l-.013.156c.135.07.265.151.405.207.354.14.702.308 1.07.395 4.083.971 7.992.474 11.516-1.803 2.221-1.435 4.521-1.707 7.013-1.336.252.038.503.083.756.107.234.022.479.255.795.003-2.179-1.574-4.526-2.096-7.094-1.872Zm-10.049-9.544c1.475.051 2.943-.142 4.486-1.059-.452.04-.643.04-.827.076-2.126.424-4.033-.04-5.733-1.383-.623-.493-1.257-.974-1.889-1.457-2.503-1.914-5.374-2.555-8.514-2.5.05.154.054.26.108.315 3.417 3.455 7.371 5.836 12.369 6.008Zm24.727 17.731c-2.114-2.097-4.952-2.367-7.578-.537 1.738.078 3.043.632 4.101 1.728.374.388.763.768 1.182 1.106 1.6 1.29 4.311 1.352 5.896.155-1.861-.726-1.861-.726-3.601-2.452Zm-21.058 16.06c-1.858-3.46-4.981-4.24-8.59-4.008a9.667 9.667 0 0 1 2.977 1.39c.84.586 1.547 1.311 2.243 2.055 1.38 1.473 3.534 2.376 4.962 2.07-.656-.412-1.238-.848-1.592-1.507Zm17.29-19.32c0-.023.001-.045.003-.068l-.006.006.006-.006-.036-.004.021.018.012.053Zm-20 14.744a7.61 7.61 0 0 0-.072-.041.127.127 0 0 0 .015.043c.005.008.038 0 .058-.002Zm-.072-.041-.008-.034-.008.01.008-.01-.022-.006.005.026.024.014Z"
        fill="#FD4F00"
      />
    </svg>
    <h1 class="text-brand mt-10 flex items-center text-sm font-semibold leading-6">
      Phoenix Framework
      <small class="bg-brand/5 text-[0.8125rem] ml-3 rounded-full px-2 font-medium leading-6">
        v<%= Application.spec(:phoenix, :vsn) %>
      </small>
    </h1>
    <p class="text-[2rem] mt-4 font-semibold leading-10 tracking-tighter text-zinc-900 text-balance">
      Peace of mind from prototype to production.
    </p>
    <p class="mt-4 text-base leading-7 text-zinc-600">
      Build rich, interactive web applications quickly, with less code and fewer moving parts. Join our growing community of developers using Phoenix to craft APIs, HTML5 apps and more, for fun or at scale.
    </p>
    <div class="flex">
      <div class="w-full sm:w-auto">
        <div class="mt-10 grid grid-cols-1 gap-x-6 gap-y-4 sm:grid-cols-3">
          <a
            href="https://hexdocs.pm/phoenix/overview.html"
            class="group relative rounded-2xl px-6 py-4 text-sm font-semibold leading-6 text-zinc-900 sm:py-6"
          >
            <span class="absolute inset-0 rounded-2xl bg-zinc-50 transition group-hover:bg-zinc-100 sm:group-hover:scale-105">
            </span>
            <span class="relative flex items-center gap-4 sm:flex-col">
              <svg viewBox="0 0 24 24" fill="none" aria-hidden="true" class="h-6 w-6">
                <path d="m12 4 10-2v18l-10 2V4Z" fill="#18181B" fill-opacity=".15" />
                <path
                  d="M12 4 2 2v18l10 2m0-18v18m0-18 10-2v18l-10 2"
                  stroke="#18181B"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
              </svg>
              Guides &amp; Docs
            </span>
          </a>
          <a
            href="https://github.com/phoenixframework/phoenix"
            class="group relative rounded-2xl px-6 py-4 text-sm font-semibold leading-6 text-zinc-900 sm:py-6"
          >
            <span class="absolute inset-0 rounded-2xl bg-zinc-50 transition group-hover:bg-zinc-100 sm:group-hover:scale-105">
            </span>
            <span class="relative flex items-center gap-4 sm:flex-col">
              <svg viewBox="0 0 24 24" aria-hidden="true" class="h-6 w-6">
                <path
                  fill-rule="evenodd"
                  clip-rule="evenodd"
                  d="M12 0C5.37 0 0 5.506 0 12.303c0 5.445 3.435 10.043 8.205 11.674.6.107.825-.262.825-.585 0-.292-.015-1.261-.015-2.291C6 21.67 5.22 20.346 4.98 19.654c-.135-.354-.72-1.446-1.23-1.738-.42-.23-1.02-.8-.015-.815.945-.015 1.62.892 1.845 1.261 1.08 1.86 2.805 1.338 3.495 1.015.105-.8.42-1.338.765-1.645-2.67-.308-5.46-1.37-5.46-6.075 0-1.338.465-2.446 1.23-3.307-.12-.308-.54-1.569.12-3.26 0 0 1.005-.323 3.3 1.26.96-.276 1.98-.415 3-.415s2.04.139 3 .416c2.295-1.6 3.3-1.261 3.3-1.261.66 1.691.24 2.952.12 3.26.765.861 1.23 1.953 1.23 3.307 0 4.721-2.805 5.767-5.475 6.075.435.384.81 1.122.81 2.276 0 1.645-.015 2.968-.015 3.383 0 .323.225.707.825.585a12.047 12.047 0 0 0 5.919-4.489A12.536 12.536 0 0 0 24 12.304C24 5.505 18.63 0 12 0Z"
                  fill="#18181B"
                />
              </svg>
              Source Code
            </span>
          </a>
          <a
            href={"https://github.com/phoenixframework/phoenix/blob/v#{Application.spec(:phoenix, :vsn)}/CHANGELOG.md"}
            class="group relative rounded-2xl px-6 py-4 text-sm font-semibold leading-6 text-zinc-900 sm:py-6"
          >
            <span class="absolute inset-0 rounded-2xl bg-zinc-50 transition group-hover:bg-zinc-100 sm:group-hover:scale-105">
            </span>
            <span class="relative flex items-center gap-4 sm:flex-col">
              <svg viewBox="0 0 24 24" fill="none" aria-hidden="true" class="h-6 w-6">
                <path
                  d="M12 1v6M12 17v6"
                  stroke="#18181B"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
                <circle
                  cx="12"
                  cy="12"
                  r="4"
                  fill="#18181B"
                  fill-opacity=".15"
                  stroke="#18181B"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
              </svg>
              Changelog
            </span>
          </a>
        </div>
        <div class="mt-10 grid grid-cols-1 gap-y-4 text-sm leading-6 text-zinc-700 sm:grid-cols-2">
          <div>
            <a
              href="https://twitter.com/elixirphoenix"
              class="group -mx-2 -my-0.5 inline-flex items-center gap-3 rounded-lg px-2 py-0.5 hover:bg-zinc-50 hover:text-zinc-900"
            >
              <svg
                viewBox="0 0 16 16"
                aria-hidden="true"
                class="h-4 w-4 fill-zinc-400 group-hover:fill-zinc-600"
              >
                <path d="M5.403 14c5.283 0 8.172-4.617 8.172-8.62 0-.131 0-.262-.008-.391A6.033 6.033 0 0 0 15 3.419a5.503 5.503 0 0 1-1.65.477 3.018 3.018 0 0 0 1.263-1.676 5.579 5.579 0 0 1-1.824.736 2.832 2.832 0 0 0-1.63-.916 2.746 2.746 0 0 0-1.821.319A2.973 2.973 0 0 0 8.076 3.78a3.185 3.185 0 0 0-.182 1.938 7.826 7.826 0 0 1-3.279-.918 8.253 8.253 0 0 1-2.64-2.247 3.176 3.176 0 0 0-.315 2.208 3.037 3.037 0 0 0 1.203 1.836A2.739 2.739 0 0 1 1.56 6.22v.038c0 .7.23 1.377.65 1.919.42.54 1.004.912 1.654 1.05-.423.122-.866.14-1.297.052.184.602.541 1.129 1.022 1.506a2.78 2.78 0 0 0 1.662.598 5.656 5.656 0 0 1-2.007 1.074A5.475 5.475 0 0 1 1 12.64a7.827 7.827 0 0 0 4.403 1.358" />
              </svg>
              Follow on Twitter
            </a>
          </div>
          <div>
            <a
              href="https://elixirforum.com"
              class="group -mx-2 -my-0.5 inline-flex items-center gap-3 rounded-lg px-2 py-0.5 hover:bg-zinc-50 hover:text-zinc-900"
            >
              <svg
                viewBox="0 0 16 16"
                aria-hidden="true"
                class="h-4 w-4 fill-zinc-400 group-hover:fill-zinc-600"
              >
                <path d="M8 13.833c3.866 0 7-2.873 7-6.416C15 3.873 11.866 1 8 1S1 3.873 1 7.417c0 1.081.292 2.1.808 2.995.606 1.05.806 2.399.086 3.375l-.208.283c-.285.386-.01.905.465.85.852-.098 2.048-.318 3.137-.81a3.717 3.717 0 0 1 1.91-.318c.263.027.53.041.802.041Z" />
              </svg>
              Discuss on the Elixir Forum
            </a>
          </div>
          <div>
            <a
              href="https://web.libera.chat/#elixir"
              class="group -mx-2 -my-0.5 inline-flex items-center gap-3 rounded-lg px-2 py-0.5 hover:bg-zinc-50 hover:text-zinc-900"
            >
              <svg
                viewBox="0 0 16 16"
                aria-hidden="true"
                class="h-4 w-4 fill-zinc-400 group-hover:fill-zinc-600"
              >
                <path
                  fill-rule="evenodd"
                  clip-rule="evenodd"
                  d="M6.356 2.007a.75.75 0 0 1 .637.849l-1.5 10.5a.75.75 0 1 1-1.485-.212l1.5-10.5a.75.75 0 0 1 .848-.637ZM11.356 2.008a.75.75 0 0 1 .637.848l-1.5 10.5a.75.75 0 0 1-1.485-.212l1.5-10.5a.75.75 0 0 1 .848-.636Z"
                />
                <path
                  fill-rule="evenodd"
                  clip-rule="evenodd"
                  d="M14 5.25a.75.75 0 0 1-.75.75h-9.5a.75.75 0 0 1 0-1.5h9.5a.75.75 0 0 1 .75.75ZM13 10.75a.75.75 0 0 1-.75.75h-9.5a.75.75 0 0 1 0-1.5h9.5a.75.75 0 0 1 .75.75Z"
                />
              </svg>
              Chat on Libera IRC
            </a>
          </div>
          <div>
            <a
              href="https://discord.gg/elixir"
              class="group -mx-2 -my-0.5 inline-flex items-center gap-3 rounded-lg px-2 py-0.5 hover:bg-zinc-50 hover:text-zinc-900"
            >
              <svg
                viewBox="0 0 16 16"
                aria-hidden="true"
                class="h-4 w-4 fill-zinc-400 group-hover:fill-zinc-600"
              >
                <path d="M13.545 2.995c-1.02-.46-2.114-.8-3.257-.994a.05.05 0 0 0-.052.024c-.141.246-.297.567-.406.82a12.377 12.377 0 0 0-3.658 0 8.238 8.238 0 0 0-.412-.82.052.052 0 0 0-.052-.024 13.315 13.315 0 0 0-3.257.994.046.046 0 0 0-.021.018C.356 6.063-.213 9.036.066 11.973c.001.015.01.029.02.038a13.353 13.353 0 0 0 3.996 1.987.052.052 0 0 0 .056-.018c.308-.414.582-.85.818-1.309a.05.05 0 0 0-.028-.069 8.808 8.808 0 0 1-1.248-.585.05.05 0 0 1-.005-.084c.084-.062.168-.126.248-.191a.05.05 0 0 1 .051-.007c2.619 1.176 5.454 1.176 8.041 0a.05.05 0 0 1 .053.006c.08.065.164.13.248.192a.05.05 0 0 1-.004.084c-.399.23-.813.423-1.249.585a.05.05 0 0 0-.027.07c.24.457.514.893.817 1.307a.051.051 0 0 0 .056.019 13.31 13.31 0 0 0 4.001-1.987.05.05 0 0 0 .021-.037c.334-3.396-.559-6.345-2.365-8.96a.04.04 0 0 0-.021-.02Zm-8.198 7.19c-.789 0-1.438-.712-1.438-1.587 0-.874.637-1.586 1.438-1.586.807 0 1.45.718 1.438 1.586 0 .875-.637 1.587-1.438 1.587Zm5.316 0c-.788 0-1.438-.712-1.438-1.587 0-.874.637-1.586 1.438-1.586.807 0 1.45.718 1.438 1.586 0 .875-.63 1.587-1.438 1.587Z" />
              </svg>
              Join our Discord server
            </a>
          </div>
          <div>
            <a
              href="https://fly.io/docs/elixir/getting-started/"
              class="group -mx-2 -my-0.5 inline-flex items-center gap-3 rounded-lg px-2 py-0.5 hover:bg-zinc-50 hover:text-zinc-900"
            >
              <svg
                viewBox="0 0 20 20"
                aria-hidden="true"
                class="h-4 w-4 fill-zinc-400 group-hover:fill-zinc-600"
              >
                <path d="M1 12.5A4.5 4.5 0 005.5 17H15a4 4 0 001.866-7.539 3.504 3.504 0 00-4.504-4.272A4.5 4.5 0 004.06 8.235 4.502 4.502 0 001 12.5z" />
              </svg>
              Deploy your application
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/controllers/page_html/support.html.heex
```heex
<div class="flex gap-12 items-center pb-12 border-b border-zinc-800">
  <img src={~p"/images/logo-lax-512.png"} class="size-24" />
  <div class="pb-2">
    <.header>
      <span class="text-4xl">Lax</span>
    </.header>
    <p class="mt-2 text-sm text-zinc-400">
      <.link href={privacy_url()} target="_blank">Privacy Policy</.link>
      • <.link href={terms_url()} target="_blank">Terms & Conditions</.link>
    </p>
  </div>
</div>

<div class="mt-12 space-y-6">
  <.header>
    Contact & Support
  </.header>

  <p class="text-sm text-zinc-300 leading-6">
    To report technical issues and suggest improvements, please open a GitHub issue on this application's
    repository here: <.link
      href="https://github.com/jtormey/lax/issues"
      target="_blank"
      class="font-semibold"
    >github.com/jtormey/lax</.link>.
  </p>

  <p class="text-sm text-zinc-300 leading-6">
    For general questions and discussion about Lax, feel free to create a Lax account and send a message
    directly in the app (on web or iOS). I check for updates try to resopnd to activity quickly.
  </p>

  <p class="text-sm text-zinc-300 leading-6">
    For other inquiries or to contact me (Justin) directly, please send an email to: <.link
      href="mailto:jrtormey@gmail.com"
      class="font-semibold"
    >jrtormey@gmail.com</.link>.
  </p>
</div>

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/controllers/error_html.ex
```ex
defmodule LaxWeb.ErrorHTML do
  @moduledoc """
  This module is invoked by your endpoint in case of errors on HTML requests.

  See config/config.exs.
  """
  use LaxWeb, :html

  # If you want to customize your error pages,
  # uncomment the embed_templates/1 call below
  # and add pages to the error directory:
  #
  #   * lib/lax_web/controllers/error_html/404.html.heex
  #   * lib/lax_web/controllers/error_html/500.html.heex
  #
  # embed_templates "error_html/*"

  # The default is to render a plain text page based on
  # the template name. For example, "404.html" becomes
  # "Not Found".
  def render(template, _assigns) do
    Phoenix.Controller.status_message_from_template(template)
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/controllers/error_json.ex
```ex
defmodule LaxWeb.ErrorJSON do
  @moduledoc """
  This module is invoked by your endpoint in case of errors on JSON requests.

  See config/config.exs.
  """

  # If you want to customize a particular status code,
  # you may add your own clauses, such as:
  #
  # def render("500.json", _assigns) do
  #   %{errors: %{detail: "Internal Server Error"}}
  # end

  # By default, Phoenix returns the status message from
  # the template name. For example, "404.json" becomes
  # "Not Found".
  def render(template, _assigns) do
    %{errors: %{detail: Phoenix.Controller.status_message_from_template(template)}}
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/controllers/health_controller.ex
```ex
defmodule LaxWeb.HealthController do
  use LaxWeb, :controller

  def health(conn, _params) do
    json(conn, %{status: :ok})
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/controllers/page_controller.ex
```ex
defmodule LaxWeb.PageController do
  use LaxWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end

  def support(conn, _params) do
    render(conn, :support)
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/controllers/page_html.ex
```ex
defmodule LaxWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use LaxWeb, :html

  embed_templates "page_html/*"

  def privacy_url() do
    "https://github.com/jtormey/lax/blob/main/native/swiftui/PRIVACY_POLICY.md"
  end

  def terms_url() do
    "https://github.com/jtormey/lax/blob/main/native/swiftui/TERMS.md"
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/controllers/user_session_controller.ex
```ex
defmodule LaxWeb.UserSessionController do
  use LaxWeb, :controller

  alias Lax.Users
  alias LaxWeb.UserAuth

  def create(conn, %{"_action" => "registered"} = params) do
    create(conn, params, "Account created successfully.")
  end

  def create(conn, %{"_action" => "password_updated"} = params) do
    conn
    |> put_session(:user_return_to, ~p"/users/settings")
    |> create(params, "Password updated successfully.")
  end

  def create(conn, params) do
    create(conn, params, "Welcome back!")
  end

  defp create(conn, %{"user" => user_params}, info) do
    %{"email" => email, "password" => password} = user_params

    if user = Users.get_user_by_email_and_password(email, password) do
      conn
      |> put_flash(:info, info)
      |> UserAuth.log_in_user(user, user_params)
    else
      # In order to prevent user enumeration attacks, don't disclose whether the email is registered.
      conn
      |> put_flash(:error, "Invalid email or password")
      |> put_flash(:email, String.slice(email, 0, 160))
      |> redirect(to: ~p"/users/sign-in")
    end
  end

  def delete(conn, _params) do
    conn
    |> put_flash(:info, "Signed out.")
    |> UserAuth.log_out_user()
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/chat_live/channel_chat_component.ex
```ex
defmodule LaxWeb.ChatLive.ChannelChatComponent do
  use LaxWeb, :live_component

  alias Lax.Chat

  import LaxWeb.ChatLive.Components

  def render(assigns) do
    ~H"""
    <div>
      <.chat_form
        form={@chat_form}
        placeholder={placeholder(@chat.current_channel)}
        phx-change="validate"
        phx-submit="submit"
        phx-target={@myself}
      />
    </div>
    """
  end

  def mount(socket) do
    {:ok, handle_form(socket)}
  end

  def handle_event("validate", %{"chat" => params}, socket) do
    {:noreply, handle_form(socket, params, :validate)}
  end

  def handle_event("submit", %{"chat" => params}, socket) do
    case Ecto.Changeset.apply_action(changeset(params), :submit) do
      {:ok, attrs} ->
        {:noreply,
         socket
         |> handle_form()
         |> update(:chat, &Chat.send_message(&1, attrs))}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, put_form(socket, changeset)}
    end
  end

  ## Helpers

  def handle_form(socket, params \\ %{}, action \\ nil) do
    changeset =
      params
      |> changeset()
      |> Map.put(:action, action)

    put_form(socket, changeset)
  end

  def put_form(socket, value \\ %{}) do
    assign(socket, :chat_form, to_form(value, as: :chat))
  end

  def changeset(params) do
    import Ecto.Changeset

    {%{}, %{text: :string}}
    |> cast(params, [:text])
    |> validate_required([:text])
  end

  def placeholder(%{type: :channel} = channel), do: "Message ##{channel.name}"
  def placeholder(%{type: :direct_message}), do: "Message group"
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/chat_live/channel_form_component.ex
```ex
defmodule LaxWeb.ChatLive.ChannelFormComponent do
  use LaxWeb, :live_component

  alias Lax.Channels
  alias Lax.Channels.Channel

  def render(assigns) do
    ~H"""
    <div>
      <.header>
        Create a channel
      </.header>

      <.simple_form for={@form} phx-change="validate" phx-submit="submit" phx-target={@myself}>
        <.input field={@form[:name]} label="Name" autocomplete="off" />
        <:actions>
          <.button type="submit">Submit</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  def mount(socket) do
    {:ok, put_form(socket)}
  end

  def handle_event("validate", %{"channel" => params}, socket) do
    changeset =
      %Channel{}
      |> Channel.changeset(:channel, params)
      |> Map.put(:action, :validate)

    {:noreply, put_form(socket, changeset)}
  end

  def handle_event("submit", params, socket) do
    case create_channel(socket.assigns.current_user, params) do
      nil ->
        {:noreply, socket}

      changeset ->
        {:noreply, put_form(socket, changeset)}
    end
  end

  def create_channel(current_user, %{"channel" => params}, patch? \\ true) do
    case Channels.create_and_join(current_user, params) do
      {:ok, channel} ->
        Channels.broadcast_new_channel(current_user, channel)
        send(self(), {__MODULE__, {:create_channel, channel, patch?}})
        nil

      {:error, %Ecto.Changeset{} = changeset} ->
        changeset
    end
  end

  def put_form(socket, value \\ %{}) do
    assign(socket, :form, to_form(value, as: :channel))
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/chat_live/chat_components.ex
```ex
defmodule LaxWeb.ChatLive.Components do
  alias Lax.Chat
  use LaxWeb, :html

  import LaxWeb.UserLive.Components

  attr :sidebar_width, :integer, required: true
  attr :sidebar_min_width, :integer, default: 128
  attr :sidebar_max_width, :integer, default: 512
  slot :sidebar, required: true
  slot :inner_block, required: true

  slot :right_sidebar do
    attr :resize_event, :string
    attr :width, :integer
    attr :min_width, :integer
    attr :max_width, :integer
  end

  def container(assigns) do
    ~H"""
    <div class="flex h-full">
      <div
        id="sidebar_resizeable"
        phx-hook="ResizeContainer"
        data-min-width={@sidebar_min_width}
        data-max-width={@sidebar_max_width}
        style={"width:#{@sidebar_width}px;"}
        class="resize-container resize-container-right border-r border-zinc-700 flex flex-col"
      >
        <%= render_slot(@sidebar) %>
      </div>
      <div class="flex-1 relative">
        <div class="absolute inset-0 bg-zinc-900 flex flex-col">
          <%= render_slot(@inner_block) %>
        </div>
      </div>
      <div
        :for={sidebar <- @right_sidebar}
        id="right_sidebar_resizeable"
        phx-hook="ResizeContainer"
        phx-resize={sidebar.resize_event}
        data-min-width={sidebar.min_width}
        data-max-width={sidebar.max_width}
        style={"width:#{sidebar.width}px;"}
        class="resize-container resize-container-left border-l border-zinc-700 flex flex-col"
      >
        <%= render_slot(sidebar) %>
      </div>
    </div>
    """
  end

  attr :title, :string, required: true
  slot :actions, default: []

  def sidebar_header(assigns) do
    ~H"""
    <div class="px-4 flex items-center justify-between">
      <div class="py-4">
        <.header><%= @title %></.header>
      </div>
      <%= render_slot(@actions) %>
    </div>
    """
  end

  slot :inner_block, required: true
  slot :bottom, default: []

  def sidebar(assigns) do
    ~H"""
    <div class="flex-1 flex flex-col overflow-y-scroll no-scrollbar py-4 px-2">
      <%= render_slot(@inner_block) %>
      <div class="flex-1 mb-4" />
      <%= render_slot(@bottom) %>
    </div>
    """
  end

  slot :inner_block, required: true

  def sidebar_section(assigns) do
    ~H"""
    <div class="mb-4">
      <%= render_slot(@inner_block) %>
    </div>
    """
  end

  attr :on_click, JS, default: nil
  slot :actions, default: []
  slot :inner_block, required: true

  def sidebar_subheader(assigns) do
    ~H"""
    <div class="flex items-center justify-between rounded leading-none px-2 py-1">
      <span :if={!@on_click} class="text-sm font-semibold text-zinc-300 truncate">
        <%= render_slot(@inner_block) %>
      </span>
      <button
        :if={@on_click}
        phx-click={@on_click}
        class="text-sm font-semibold text-zinc-300 truncate rounded hover:bg-zinc-700 px-1 -ml-1"
      >
        <%= render_slot(@inner_block) %>
      </button>
      <%= render_slot(@actions) %>
    </div>
    """
  end

  attr :user, Lax.Users.User, required: true
  attr :online_fun, :any, required: true
  attr :on_cancel, JS, required: true

  def user_profile_sidebar(assigns) do
    ~H"""
    <button
      phx-click={@on_cancel}
      phx-window-keydown={@on_cancel}
      phx-key="Escape"
      class="absolute top-2 right-3"
    >
      <.icon name="hero-x-mark" class="size-4 text-white" />
    </button>

    <div class="pt-32 flex flex-col items-center">
      <.user_profile user={@user} online={@online_fun.(@user)} size={:xl} />
      <div class="mt-8">
        <.username user={@user} />
      </div>
      <div class="mt-2">
        <% local_time = DateTime.shift_zone!(DateTime.utc_now(), @user.time_zone) %>
        <% local_time_strftime = Calendar.strftime(local_time, "%-I:%M%P") %>
        <span class="text-xs text-zinc-200">
          Timezone: <%= @user.time_zone %> (<%= local_time_strftime %> local)
        </span>
      </div>
      <div :if={@user.deleted_at == nil} class="mt-8">
        <.button variant={:action} phx-click={JS.navigate(~p"/direct-messages?to_user=#{@user}")}>
          Direct message
        </.button>
      </div>
    </div>
    """
  end

  attr :name, :string, required: true
  attr :selected, :boolean, default: false
  attr :active, :boolean, default: false
  attr :rest, :global, include: ~w(phx-click phx-target)

  def channel_item(assigns) do
    assigns = assign(assigns, :text_class, text_class(assigns))

    ~H"""
    <.item_button {assigns}>
      <div class="w-4">
        <.icon name="hero-hashtag" class={["size-4", @text_class]} />
      </div>
      <span class={["text-sm truncate", @text_class]}><%= @name %></span>
    </.item_button>
    """
  end

  attr :users, :list, required: true
  attr :selected, :boolean, default: false
  attr :active, :boolean, default: false
  attr :online_fun, :any, required: true
  attr :unread_count, :integer, default: 0
  attr :rest, :global, include: ~w(phx-click phx-target)

  def direct_message_item(assigns) do
    assigns = assign(assigns, :text_class, text_class(assigns))

    ~H"""
    <.item_button {assigns}>
      <.user_profile user={hd(@users)} online={@online_fun.(hd(@users))} size={:xs} />
      <div>
        <.intersperse :let={user} enum={@users}>
          <:separator><span class="text-zinc-400">,</span></:separator>
          <span class={["text-sm truncate", @text_class]}>
            <%= Lax.Users.User.display_name(user) %>
          </span>
        </.intersperse>
      </div>
      <div
        :if={@unread_count > 0}
        class="absolute right-2 flex items-center justify-center bg-rose-500 size-5 rounded"
      >
        <span class="text-xs text-white font-semibold"><%= @unread_count %></span>
      </div>
    </.item_button>
    """
  end

  defp item_button(assigns) do
    ~H"""
    <button
      class={[
        "relative flex items-center gap-2 w-full rounded leading-none px-2 py-1",
        if(@selected, do: "bg-zinc-600", else: "hover:bg-zinc-800"),
        if(@active, do: "font-bold")
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </button>
    """
  end

  defp text_class(assigns) do
    if assigns.selected or assigns.active do
      "text-white"
    else
      "text-zinc-400 group-hover:text-white"
    end
  end

  attr :channel, Lax.Channels.Channel, required: true
  attr :users_fun, :any

  def chat_header(%{channel: %{type: :channel}} = assigns) do
    ~H"""
    <div class="border-b border-zinc-700 px-4">
      <.header>
        <div class="flex gap-2 items-center">
          <.icon name="hero-hashtag" class="text-white size-5" />
          <div class="py-4">
            <%= @channel.name %>
          </div>
        </div>
      </.header>
    </div>
    """
  end

  def chat_header(%{channel: %{type: :direct_message}} = assigns) do
    ~H"""
    <div class="border-b border-zinc-700 px-4">
      <.header>
        <div class="flex gap-2 items-center">
          <.icon name="hero-at-symbol" class="text-white size-5" />
          <div class="py-4">
            <.intersperse :let={user} enum={@users_fun.(@channel)}>
              <:separator><span class="text-zinc-400">,</span></:separator>
              <%= Lax.Users.User.display_name(user) %>
            </.intersperse>
          </div>
        </div>
      </.header>
    </div>
    """
  end

  slot :inner_block, required: true

  def chat(assigns) do
    ~H"""
    <div class="flex-1 flex flex-col-reverse py-4 overflow-y-scroll no-scrollbar">
      <%= render_slot(@inner_block) %>
    </div>
    """
  end

  attr :message, Lax.Messages.Message, required: true
  attr :user_detail_patch, :string
  attr :online, :boolean, required: true
  attr :time, :string, required: true
  attr :on_delete, JS, default: nil
  attr :on_report, JS, default: nil

  def message(%{message: %{compact: true}} = assigns) do
    ~H"""
    <div class="relative hover:bg-zinc-800 px-4 py-1 group">
      <div class="flex gap-2">
        <div class="w-8 flex items-start justify-end pt-0.5 invisible group-hover:visible">
          <span class="text-xs text-zinc-400">
            <%= @time %>
          </span>
        </div>
        <div class="flex-1 overflow-x-hidden">
          <p class="text-sm text-zinc-300 whitespace-pre-wrap break-words" phx-no-format><%= linkify_text(@message.text) %></p>
        </div>
        <.message_hover_actions on_delete={@on_delete} on_report={@on_report} />
      </div>
      <.message_link_previews :if={show_link_previews?(@message)} message={@message} />
    </div>
    """
  end

  def message(assigns) do
    ~H"""
    <div class="relative hover:bg-zinc-800 px-4 pt-2 pb-1 group">
      <div class="flex gap-2">
        <.user_profile user={@message.sent_by_user} size={:md} class="mt-1" online={@online} />
        <div class="flex-1">
          <div class="space-x-1 leading-none">
            <.link patch={@user_detail_patch}>
              <.username user={@message.sent_by_user} />
            </.link>
            <span class="text-xs text-zinc-400">
              <%= @time %>
            </span>
          </div>
          <div class="flex-1 overflow-x-hidden">
            <p class="text-sm text-zinc-300 whitespace-pre-wrap break-words" phx-no-format><%= linkify_text(@message.text) %></p>
          </div>
        </div>
        <.message_hover_actions on_delete={@on_delete} on_report={@on_report} />
      </div>
      <.message_link_previews :if={show_link_previews?(@message)} message={@message} />
    </div>
    """
  end

  attr :on_delete, JS, default: nil
  attr :on_report, JS, default: nil

  def message_hover_actions(assigns) do
    ~H"""
    <div
      :if={@on_delete || @on_report}
      class="absolute top-1 right-4 hidden group-hover:flex gap-1 items-center"
    >
      <.icon_button :if={@on_delete} icon="hero-trash" phx-click={@on_delete} title="Delete message" />
      <.icon_button :if={@on_report} icon="hero-flag" phx-click={@on_report} title="Report abuse" />
    </div>
    """
  end

  attr :message, Lax.Messages.Message, required: true

  def message_link_previews(assigns) do
    ~H"""
    <div class="ml-10 mt-2 space-y-2">
      <.message_link_preview
        :for={link_preview <- @message.link_previews}
        :if={show_link_preview?(link_preview)}
        link_preview={link_preview}
      />
    </div>
    """
  end

  attr :link_preview, Lax.Messages.LinkPreview, required: true

  def message_link_preview(assigns) do
    ~H"""
    <div class="border-l-4 border-zinc-500 pl-4">
      <.link href={@link_preview.link} target="_blank">
        <p class="text-sm text-zinc-200 font-semibold">
          <%= @link_preview.page_title %>
        </p>
        <p :if={@link_preview.page_description} class="text-xs text-zinc-400">
          <%= @link_preview.page_description %>
        </p>
        <img
          :if={@link_preview.page_image_url}
          class="mt-2 h-48 rounded"
          src={@link_preview.page_image_url}
        />
      </.link>
    </div>
    """
  end

  defp show_link_previews?(message) do
    message.link_previews != [] and Enum.any?(message.link_previews, &show_link_preview?/1)
  end

  defp show_link_preview?(link_preview) do
    link_preview.state == :done and link_preview.page_title != nil
  end

  defp linkify_text(text) do
    Lynx.HTML.linkify_text(text, link_attrs: [target: "_blank", class: "text-sky-400"])
  end

  attr :form, Phoenix.HTML.Form, required: true
  attr :placeholder, :string, required: true
  attr :rest, :global, include: ~w(phx-change phx-submit phx-target)

  def chat_form(assigns) do
    ~H"""
    <div class="relative px-4 pb-4">
      <.form for={@form} class="-mt-2" {@rest}>
        <.input
          type="textarea"
          phx-hook="ControlTextarea"
          field={@form[:text]}
          placeholder={@placeholder}
          autofocus
        >
          <div class="flex items-center p-1">
            <div class="flex-1" />
            <.chat_submit_button disabled={not @form.source.valid?} />
          </div>
        </.input>
      </.form>
    </div>
    """
  end

  attr :disabled, :boolean, required: true

  def chat_submit_button(assigns) do
    ~H"""
    <button
      type="submit"
      class="flex bg-emerald-600 group disabled:bg-zinc-800 rounded py-1 px-4"
      disabled={@disabled}
    >
      <.icon name="hero-paper-airplane-solid" class="size-4 text-white group-disabled:text-zinc-500" />
    </button>
    """
  end

  def app_store_cta(assigns) do
    ~H"""
    <div class="bg-zinc-800 border border-zinc-600 rounded p-2 text-white max-w-[300px] min-w-[150px]">
      <h3 class="mb-1 text-sm text-zinc-100 font-semibold">
        Try Lax for iOS!
      </h3>
      <p class="mb-3 text-xs text-zinc-400">
        Lax now has an iOS app built with LiveView Native. Scan to install:
      </p>
      <div class="size-32 relative overflow-hidden rounded-sm">
        <div class="pt-[100%]" />
        <div class="absolute -inset-2">
          <.link href="https://apps.apple.com/app/lax-community-chat/id6654924329" target="_blank">
            <img src={~p"/images/lax-app-store-qr.png"} class="w-full h-full" />
          </.link>
        </div>
      </div>
    </div>
    """
  end

  ## Helpers

  def put_page_title(socket) do
    chat = socket.assigns.chat

    page_title =
      case chat.current_channel do
        nil ->
          "Channels"

        %{type: :channel} = channel ->
          "##{channel.name}"

        %{type: :direct_message} = channel ->
          "#{Enum.map_join(Chat.direct_message_users(chat, channel), ", ", &"@#{Lax.Users.User.display_name(&1)}")}"
      end

    assign(socket, :page_title, page_title)
  end

  def group_messages(messages) do
    messages
    |> Enum.chunk_by(& &1.sent_by_user_id)
    |> Enum.flat_map(fn chunk ->
      chunk
      |> Enum.map(&%{&1 | compact: true})
      |> List.update_at(-1, &%{&1 | compact: false})
    end)
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/chat_live/chat_components.swiftui.ex
```ex
defmodule LaxWeb.ChatLive.Components.SwiftUI do
  use LaxNative, [:component, format: :swiftui]

  import LiveViewNative.LiveForm.Component
  import LiveViewNative.SwiftUI.Component

  import LaxWeb.CoreComponents.SwiftUI
  import LaxWeb.UserLive.Components.SwiftUI

  attr :rest, :global, include: ~w(phx-change selection)
  slot :inner_block, required: true

  def tab_bar(assigns) do
    ~LVN"""
    <TabView {@rest}>
      <%= render_slot(@inner_block) %>
    </TabView>
    """
  end

  attr :tag, :any, required: true
  attr :name, :string, required: true
  attr :icon_system_name, :string, required: true
  slot :inner_block, required: true

  def tab(assigns) do
    ~LVN"""
    <Group tag={@tag} style="tabItem(:tab);">
      <Image template={:tab} systemName={@icon_system_name} />
      <Text template={:tab}><%= @name %></Text>
      <%= render_slot(@inner_block) %>
    </Group>
    """
  end

  attr :rest, :global

  slot :option do
    attr :navigate, :string
    attr :on_click, :string
    attr :system_image, :string
    attr :role, :atom, values: [:destructive]
  end

  slot :inner_block, required: true

  def user_options(assigns) do
    ~LVN"""
    <Menu {@rest}>
      <Group template="label">
        <%= render_slot(@inner_block) %>
      </Group>
      <%= for option <- @option do %>
        <%= cond do %>
        <% navigate = option[:navigate] -> %>
          <.link navigate={navigate}>
            <Label systemImage={option[:system_image]}>
              <%= render_slot(option) %>
            </Label>
          </.link>
        <% on_click = option[:on_click] -> %>
          <.button phx-click={on_click} role={option[:role]}>
            <Label systemImage={option[:system_image]}>
              <%= render_slot(option) %>
            </Label>
          </.button>
        <% end %>
      <% end %>
    </Menu>
    """
  end

  attr :rest, :global, include: ~w(selection)
  slot :inner_block, required: true

  def workspace_list(assigns) do
    ~LVN"""
    <List {@rest}>
      <%= render_slot(@inner_block) %>
    </List>
    """
  end

  attr :title, :string, required: true
  slot :footer, default: []
  slot :inner_block, required: true

  def workspace_section(assigns) do
    ~LVN"""
    <Section>
      <Text template="header">
        <%= @title %>
      </Text>
      <Text :if={@footer != []} template="footer">
        <%= render_slot(@footer) %>
      </Text>
      <%= render_slot(@inner_block) %>
    </Section>
    """
  end

  attr :name, :string, required: true
  attr :active, :boolean, default: false
  attr :unread_count, :integer, default: 0
  attr :target, :string, default: "ios"
  attr :rest, :global, include: ~w(navigate id)
  slot :menu_items

  def channel_item(%{target: "macos"} = assigns) do
    ~LVN"""
    <Group style='contextMenu(menuItems: :menu_items);'>
      <LabeledContent {@rest} style='badge(attr("count"))' count={@unread_count}>
        <Text template="label"># <%= @name %></Text>
      </LabeledContent>
      <Group template="menu_items">
        <%= render_slot(@menu_items) %>
      </Group>
    </Group>
    """
  end

  def channel_item(assigns) do
    ~LVN"""
    <Group style='contextMenu(menuItems: :menu_items);'>
      <.link {@rest}>
        <LabeledContent style='badge(attr("count"))' count={@unread_count}>
          <Text template="label"># <%= @name %></Text>
        </LabeledContent>
      </.link>
      <Group template="menu_items">
        <%= render_slot(@menu_items) %>
      </Group>
    </Group>
    """
  end

  attr :users, :list, required: true
  attr :selected, :boolean, default: false
  attr :active, :boolean, default: false
  attr :online_fun, :any, required: true
  attr :unread_count, :integer, default: 0
  attr :target, :string, default: "ios"
  attr :rest, :global, include: ~w(navigate id)

  def direct_message_item(%{target: "macos"} = assigns) do
    ~LVN"""
    <LabeledContent {@rest} style='badge(attr("count"));' count={@unread_count}>
        <HStack template="label">
          <.user_profile user={hd(@users)} online={@online_fun.(hd(@users))} size={:xs} />
          <Text>
            <%= Enum.map_join(@users, ", ", &Lax.Users.User.display_name/1) %>
          </Text>
        </HStack>
      </LabeledContent>
    """
  end

  def direct_message_item(assigns) do
    ~LVN"""
    <.link {@rest}>
      <LabeledContent style='badge(attr("count"));' count={@unread_count}>
        <HStack template="label">
          <.user_profile user={hd(@users)} online={@online_fun.(hd(@users))} size={:xs} />
          <Text>
            <%= Enum.map_join(@users, ", ", &Lax.Users.User.display_name/1) %>
          </Text>
        </HStack>
      </LabeledContent>
    </.link>
    """
  end

  attr :channel, Lax.Channels.Channel, required: true
  attr :users_fun, :any

  def chat_header(%{channel: %{type: :channel}} = assigns) do
    ~LVN"""
    <.header>
      #<%= @channel.name %>
    </.header>
    """
  end

  def chat_header(%{channel: %{type: :direct_message}} = assigns) do
    ~LVN"""
    <.header>
      @<%= Enum.map_join(@users_fun.(@channel), ", ", &Lax.Users.User.display_name/1) %>
    </.header>
    """
  end

  attr :animation_key, :any
  attr :target, :string, default: "ios"
  slot :inner_block
  slot :bottom_bar

  def chat(%{target: "macos"} = assigns) do
    ~LVN"""
    <ScrollView style="scrollDismissesKeyboard(.immediately); defaultScrollAnchor(.bottom); safeAreaInset(edge: .bottom, content: :bottom_bar);">
      <VStack
        alignment="leading"
        style='frame(maxWidth: .infinity, alignment: .leading); animation(.default, value: attr("animation_key")); padding(.top);'
        animation_key={@animation_key}
      >
        <%= render_slot(@inner_block) %>
      </VStack>
      <VStack spacing="0" template={:bottom_bar} style="background(.bar, in: .rect(cornerRadius: 8)); background(content: :stroke); padding();">
        <%= render_slot(@bottom_bar) %>
        <RoundedRectangle template="stroke" cornerRadius="8" style="stroke(.separator, lineWidth: 2);" />
      </VStack>
    </ScrollView>
    """
  end

  def chat(assigns) do
    ~LVN"""
    <ScrollView style="scrollDismissesKeyboard(.immediately); defaultScrollAnchor(.bottom); safeAreaInset(edge: .bottom, content: :bottom_bar);">
      <VStack
        alignment="leading"
        style='frame(maxWidth: .infinity, alignment: .leading); animation(.default, value: attr("animation_key"));'
        animation_key={@animation_key}
      >
        <%= render_slot(@inner_block) %>
      </VStack>
      <VStack spacing="0" template={:bottom_bar} style="background(.bar);">
        <Divider />
        <%= render_slot(@bottom_bar) %>
      </VStack>
    </ScrollView>
    """
  end

  attr :message_id, :string, required: true
  attr :user, Lax.Users.User, required: true
  attr :user_detail_patch, :string
  attr :online, :boolean, required: true
  attr :time, :string, required: true
  attr :text, :string, required: true
  attr :compact, :boolean, required: true
  attr :on_delete, :string, default: nil
  attr :on_report, :string, default: nil

  def message(%{compact: true} = assigns) do
    ~LVN"""
    <Group style='padding(.horizontal, 56); padding(.bottom, 1); contextMenu(menuItems: :delete_menu);'>
      <Group template={:delete_menu}>
        <.message_hold_actions message_id={@message_id} on_delete={@on_delete} on_report={@on_report} />
      </Group>
      <HStack style='frame(maxWidth: :infinity);'>
        <VStack alignment="leading">
          <Text markdown={@text} style="textSelection(.enabled);" />
        </VStack>
        <Spacer />
      </HStack>
    </Group>
    """
  end

  def message(assigns) do
    ~LVN"""
    <Group style="padding(.horizontal); padding(.bottom, 1); contextMenu(menuItems: :delete_menu);">
      <Group template={:delete_menu}>
        <.message_hold_actions message_id={@message_id} on_delete={@on_delete} on_report={@on_report} />
      </Group>
      <HStack style='frame(maxWidth: .infinity);'>
        <VStack style='padding(.top, 2)'>
          <.user_profile user={@user} size={:md} online={@online} />
          <Spacer />
        </VStack>
        <VStack alignment="leading">
          <HStack>
            <Button style="buttonStyle(.plain);" phx-click="swiftui_user_detail_patch" phx-value-profile={@user_detail_patch}>
              <Text style="font(.headline); foregroundStyle(.primary);">
                <%= Lax.Users.User.display_name(@user) %>
              </Text>
            </Button>
            <Spacer />
            <Text style="font(.caption2); foregroundStyle(.secondary); padding(.top, 4);">
              <%= @time %>
            </Text>
          </HStack>
          <Text style="font(.body); textSelection(.enabled);" markdown={@text} />
        </VStack>
        <Spacer />
      </HStack>
    </Group>
    """
  end

  attr :message_id, :string, required: true
  attr :on_delete, :string, default: nil
  attr :on_report, :string, default: nil

  def message_hold_actions(assigns) do
    ~LVN"""
    <Button
      :if={@on_delete}
      role="destructive"
      phx-click={@on_delete}
      phx-value-id={@message_id}
    >
      <Label systemImage="trash">
        Delete message
      </Label>
    </Button>
    <Button
      :if={@on_report}
      role="destructive"
      phx-click={@on_report}
      phx-value-id={@message_id}
    >
      <Label systemImage="flag">
        Report message
      </Label>
    </Button>
    """
  end

  attr :form, Phoenix.HTML.Form, required: true
  attr :placeholder, :string, required: true
  attr :target, :string, default: "ios"
  attr :rest, :global, include: ~w(phx-change phx-submit phx-target)

  def chat_form(%{target: "macos"} = assigns) do
    ~LVN"""
    <VStack alignment="trailing" style="padding(.leading); padding(.vertical, 8); padding(.trailing, 8);">
      <.form {@rest} for={@form}>
        <.input
          field={Map.put(@form[:text], :errors, [])}
          placeholder={@placeholder}
          style="textFieldStyle(.plain); padding(.vertical, 4);"
          axis="vertical"
        />
        <LiveSubmitButton
          style={[
            "buttonStyle(.borderedProminent)",
            ~s[disabled(attr("disabled"))]
          ]}
          after-submit="clear"
          disabled={not @form.source.valid?}
        >
          <Image systemName="paperplane.fill" style="padding(4);" />
        </LiveSubmitButton>
      </.form>
    </VStack>
    """
  end

  def chat_form(assigns) do
    ~LVN"""
    <HStack style="padding(.leading); padding(.vertical, 8); padding(.trailing, 8);">
      <.form {@rest} for={@form}>
        <.input
          field={Map.put(@form[:text], :errors, [])}
          placeholder={@placeholder}
        />
        <LiveSubmitButton
          style={[
            "buttonStyle(.borderedProminent)",
            "buttonBorderShape(.circle)",
            "controlSize(.small)",
            ~s[disabled(attr("disabled"))]
          ]}
          after-submit="clear"
          disabled={not @form.source.valid?}
        >
          <Image systemName="paperplane.fill" style="padding(4);" />
        </LiveSubmitButton>
      </.form>
    </HStack>
    """
  end

  def chat_signed_out_notice(assigns) do
    ~LVN"""
    <Text
      style={[
        "font(.subheadline)",
        "padding(.horizontal); padding(.vertical, 12);",
        "frame(maxWidth: .infinity)",
        "overlay(content: :border)",
        "padding(.horizontal); padding(.vertical)"
      ]}
    >
      <RoundedRectangle template={:border} cornerRadius={4} style="stroke(.gray);" />
      You are viewing this channel anonymously. Sign in to send messages.
    </Text>
    """
  end

  attr :user, Lax.Users.User
  attr :online_fun, :any, required: true
  attr :current_user, Lax.Users.User
  slot :inner_block

  def user_profile_sidebar(assigns) do
    ~LVN"""
    <VStack
      style={[
        ~s[inspector(isPresented: attr("is-presented"), content: :content)]
      ]}
      is-presented={@user != nil}
      phx-change="swiftui_user_detail_patch"
    >
      <%= render_slot(@inner_block) %>
      <ScrollView
        template="content"
        :if={@user}
        style={[
          ~s[tint(attr("display_color"))],
          ~s[navigationTitle("Profile")]
        ]}
        display_color={@user.display_color}
      >
        <VStack
          alignment="leading"
          style="padding();"
        >
          <.user_profile user={@user} online={@online_fun.(@user)} size={:xl} />
          <Text style="font(.title2); bold();"><%= Lax.Users.User.display_name(@user) %></Text>

          <LabeledContent>
            <Text template="label">Status</Text>
            <Text><%= if @online_fun.(@user), do: "Online", else: "Away" %></Text>
          </LabeledContent>

          <LabeledContent>
            <% local_time = DateTime.shift_zone!(DateTime.utc_now(), @user.time_zone) %>
            <% local_time_strftime = Calendar.strftime(local_time, "%-I:%M%P") %>
            <Text template="label">Timezone</Text>
            <Text><%= @user.time_zone %> (<%= local_time_strftime %> local)</Text>
          </LabeledContent>

          <.link
            :if={@current_user && @user.deleted_at == nil}
            navigate={~p"/new-direct-message?to_user=#{@user}"}
            style='buttonStyle(.borderedProminent); controlSize(.large); padding(.vertical);'
          >
            <Text style="frame(maxWidth: .infinity);">Direct message</Text>
          </.link>
        </VStack>
      </ScrollView>
    </VStack>
    """
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/chat_live/manage_channels_component.ex
```ex
defmodule LaxWeb.ChatLive.ManageChannelsComponent do
  use LaxWeb, :live_component

  alias Lax.Channels
  alias Lax.Users.Membership

  def render(assigns) do
    ~H"""
    <div>
      <.header>
        Manage channels
      </.header>

      <div
        :for={channel <- @channels}
        class="w-full flex gap-4 items-center border-b border-zinc-700 py-4"
      >
        <div class="flex gap-1 items-center text-white">
          <.icon name="hero-hashtag" class="size-4" />
          <%= channel.name %>
        </div>
        <div class="flex-1" />
        <.button
          :if={channel.id not in @joined_channels}
          variant={:action}
          icon="hero-plus-circle-mini"
          phx-click={JS.push("join", value: %{id: channel.id}, target: @myself)}
        >
          Join
        </.button>
        <.button
          :if={channel.id in @joined_channels}
          class="group"
          phx-click={JS.push("leave", value: %{id: channel.id}, target: @myself)}
        >
          <span class="hidden group-hover:inline-block">Leave</span>
          <span class="inline-block group-hover:hidden">Joined</span>
        </.button>
      </div>
    </div>
    """
  end

  def mount(socket) do
    {:ok, assign(socket, :channels, Channels.list(:channel))}
  end

  def update(assigns, socket) do
    {:ok,
     socket
     |> assign(assigns)
     |> put_joined_channels()}
  end

  def handle_event("join", %{"id" => channel_id}, socket) do
    channel = Channels.get!(channel_id, :channel)
    Membership.join_channel!(socket.assigns.current_user, channel)

    send(self(), {__MODULE__, :update_channels})

    {:noreply, put_joined_channels(socket)}
  end

  def handle_event("leave", %{"id" => channel_id}, socket) do
    channel = Channels.get!(channel_id, :channel)
    Membership.leave_channel!(socket.assigns.current_user, channel)

    send(self(), {__MODULE__, :update_channels})

    {:noreply, put_joined_channels(socket)}
  end

  def put_joined_channels(socket) do
    joined_channels =
      socket.assigns.current_user
      |> Membership.list_channels(:channel)
      |> Enum.map(& &1.id)
      |> MapSet.new()

    assign(socket, :joined_channels, joined_channels)
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/direct_message_live/direct_message_components.ex
```ex
defmodule LaxWeb.DirectMessageLive.Components do
  alias Lax.Messages.Message
  use LaxWeb, :html

  import LaxWeb.UserLive.Components

  attr :class, :string, default: nil
  slot :inner_block

  def notice(assigns) do
    ~H"""
    <div class={["relative flex bg-zinc-900 border border-zinc-700 rounded p-2", @class]}>
      <span class="text-xs text-zinc-500">
        <%= render_slot(@inner_block) %>
      </span>
    </div>
    """
  end

  slot :inner_block

  def direct_message_list(assigns) do
    ~H"""
    <div class="flex-1 overflow-y-scroll no-scrollbar">
      <%= render_slot(@inner_block) %>
    </div>
    """
  end

  attr :current_user, Lax.Users.User
  attr :users, :list, required: true
  attr :latest_message, Lax.Messages.Message, required: true
  attr :selected, :boolean, default: false
  attr :online_fun, :any, required: true
  attr :rest, :global, include: ~w(phx-click phx-target)

  def direct_message_item_row(assigns) do
    ~H"""
    <button
      class={[
        "w-full",
        if(@selected, do: "bg-zinc-800", else: "hover:bg-zinc-800")
      ]}
      {@rest}
    >
      <div class="flex p-4 border-b border-zinc-700">
        <div class="relative flex-1 flex gap-4">
          <.user_profile user={hd(@users)} online={@online_fun.(hd(@users))} size={:md} class="mt-1" />
          <div class="flex-1 text-left">
            <.intersperse :let={user} enum={@users}>
              <:separator><span class="text-zinc-400">,</span></:separator>
              <.username user={user} />
            </.intersperse>
            <div>
              <div class="absolute top-0 right-0">
                <span class="text-xs text-zinc-400">
                  <%= Message.show_time(@latest_message, @current_user && @current_user.time_zone) %>
                </span>
              </div>
              <span class="text-sm text-zinc-400 line-clamp-2 break-all">
                <%= Lax.Users.User.display_name(@latest_message.sent_by_user) %>: <%= @latest_message.text %>
              </span>
            </div>
          </div>
        </div>
      </div>
    </button>
    """
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/direct_message_live/direct_message_components.swiftui.ex
```ex
defmodule LaxWeb.DirectMessageLive.Components.SwiftUI do
  use LiveViewNative.Component

  import LaxWeb.UserLive.Components.SwiftUI
  import LiveViewNative.SwiftUI.Component

  alias Lax.Messages.Message

  slot :inner_block, required: true

  def direct_message_list(assigns) do
    ~LVN"""
    <List style="listStyle(.plain);">
      <%= render_slot(@inner_block) %>
    </List>
    """
  end

  attr :current_user, Lax.Users.User
  attr :users, :list, required: true
  attr :latest_message, Lax.Messages.Message, required: true
  attr :selected, :boolean, default: false
  attr :online_fun, :any, required: true
  attr :navigate, :string, required: true

  def direct_message_item_row(assigns) do
    ~LVN"""
    <.link navigate={@navigate} style="foregroundStyle(.primary);">
      <HStack alignment="top">
        <.user_profile user={hd(@users)} online={@online_fun.(hd(@users))} size={:md} />
        <VStack alignment="leading">
          <HStack style="padding(.bottom, 1);">
            <Text style="font(.headline);">
              <%= Enum.map_join(@users, ", ", &Lax.Users.User.display_name/1) %>
            </Text>
            <Spacer />
            <Text style="font(.footnote);">
              <%= Message.show_time(@latest_message, @current_user && @current_user.time_zone) %>
            </Text>
          </HStack>
          <Text style="font(.subheadline);">
            <%= Lax.Users.User.display_name(@latest_message.sent_by_user) %>: <%= @latest_message.text %>
          </Text>
        </VStack>
      </HStack>
    </.link>
    """
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/direct_message_live/new_direct_message_live.ex
```ex
defmodule LaxWeb.DirectMessageLive.NewDirectMessageLive do
  use LaxWeb, :live_view
  use LaxNative, :live_view

  alias Lax.Channels
  alias Lax.Messages
  alias Lax.Users

  import LaxWeb.ChatLive.Components
  import LaxWeb.UserLive.Components

  def render(assigns) do
    ~H"""
    <div class="flex justify-between gap-2 border-b border-zinc-700 p-4">
      <.header>
        New message
      </.header>
    </div>
    <div class="flex-1 relative overflow-y-scroll no-scrollbar px-4">
      <div class="absolute inset-0">
        <div class="flex-1 mx-auto max-w-sm py-16">
          <div
            :for={user <- @users}
            class="w-full flex gap-4 items-center border-b border-zinc-700 py-6"
          >
            <.user_profile
              user={user}
              online={LaxWeb.Presence.Live.online?(assigns, user)}
              size={:md}
            />
            <.username user={user} />
            <div class="flex-1" />
            <.button
              :if={user.id not in @selected_user_ids}
              variant={:action}
              icon="hero-plus-circle-mini"
              phx-click={JS.push("add", value: %{id: user.id})}
            >
              Add
            </.button>
            <.button
              :if={user.id in @selected_user_ids}
              class="group"
              phx-click={JS.push("remove", value: %{id: user.id})}
            >
              <span class="hidden group-hover:inline-block">Remove</span>
              <span class="inline-block group-hover:hidden">Added</span>
            </.button>
          </div>
        </div>
      </div>
    </div>

    <.chat_form
      form={@chat_form}
      placeholder="Start a new message"
      phx-change="validate"
      phx-submit="submit"
    />
    """
  end

  def mount(%{"to_user" => to_user}, session, socket) do
    mount(%{}, Map.put(session, "initial_user_ids", [to_user]), socket)
  end

  def mount(params, session, socket)
      when params == :not_mounted_at_router or socket.assigns._format == "swiftui" do
    current_user =
      if user_token = session["user_token"] do
        Users.get_user_by_session_token(user_token)
      end

    all_users = Users.list_other_users(current_user)

    {:ok,
     socket
     |> assign(:params, %{})
     |> assign(:selected_user_ids, MapSet.new(session["initial_user_ids"] || []))
     |> assign(:current_user, current_user)
     |> assign(:users, all_users)
     |> assign(:filter, "")
     |> assign(:filtered_users, all_users)
     |> handle_form()}
  end

  def mount(_params, _session, socket) do
    {:ok, redirect(socket, to: ~p"/direct-messages")}
  end

  def handle_event("add", %{"id" => user_id}, socket) do
    {:noreply,
     socket
     |> update(:selected_user_ids, &MapSet.put(&1, user_id))
     |> handle_form()}
  end

  def handle_event("remove", %{"id" => user_id}, socket) do
    {:noreply,
     socket
     |> update(:selected_user_ids, &MapSet.delete(&1, user_id))
     |> handle_form()}
  end

  def handle_event("filter", %{"filter" => filter}, socket) do
    {:noreply,
     assign(socket, filter: filter, filtered_users: filter_users(socket.assigns.users, filter))}
  end

  def handle_event("validate", %{"chat" => params}, socket) do
    {:noreply,
     socket
     |> assign(:params, params)
     |> handle_form(:validate)}
  end

  def handle_event("submit", %{"chat" => params}, socket) do
    case Ecto.Changeset.apply_action(changeset(socket, params), :submit) do
      {:ok, %{text: text, user_ids: user_ids}} ->
        users = Users.get_all(user_ids)

        if users == [] do
          raise("Cannot create direct message with no other users")
        end

        {:ok, channel} =
          Channels.create_and_join(
            socket.assigns.current_user,
            %{},
            type: :direct_message,
            invite_users: users
          )

        user_ids = [socket.assigns.current_user | user_ids]
        Channels.broadcast_new_channel(user_ids, channel)

        {:ok, message} = Messages.send(channel, socket.assigns.current_user, %{text: text})
        Messages.broadcast_sent_message(channel, message)

        send(self(), {__MODULE__, {:create_direct_message, channel}})

        socket = push_navigate(socket, to: ~p"/chat/#{channel.id}", replace: true)

        {:noreply, socket}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, put_form(socket, changeset)}
    end
  end

  ## Helpers

  def handle_form(socket, action \\ nil) do
    changeset =
      socket
      |> changeset(socket.assigns.params)
      |> Map.put(:action, action)

    put_form(socket, changeset)
  end

  def put_form(socket, value \\ %{}) do
    assign(socket, :chat_form, to_form(value, as: :chat))
  end

  def changeset(socket, params) do
    import Ecto.Changeset

    {%{}, %{text: :string, user_ids: {:array, :string}}}
    |> cast(params, [:text])
    |> put_change(:user_ids, MapSet.to_list(socket.assigns.selected_user_ids))
    |> validate_required([:text])
    |> validate_length(:user_ids, min: 1)
  end

  def filter_users(users, filter) do
    Enum.filter(
      users,
      &(&1.username |> String.downcase() |> String.contains?(String.downcase(filter)))
    )
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/direct_message_live/new_direct_message_live.swiftui.ex
```ex
defmodule LaxWeb.DirectMessageLive.NewDirectMessageLive.SwiftUI do
  use LaxNative, [:render_component, format: :swiftui]

  import LaxWeb.UserLive.Components.SwiftUI
  import LaxWeb.ChatLive.Components.SwiftUI

  def render(assigns, %{"target" => "macos" = target}) do
    assigns = assign(assigns, target: target)

    ~LVN"""
    <Group
      style={[
        ~s[searchable(text: attr("filter"), placement: .navigationBarDrawer(displayMode: .always), prompt: "Add users")],
        "safeAreaInset(edge: .bottom, content: :chat_form)",
        "safeAreaInset(edge: .top, content: :group)",
        ~s[navigationTitle("New Message")]
      ]}
      filter={@filter}
      phx-change="filter"
    >
      <List
        style={[
          "listStyle(.plain)",
          ~s[animation(.default, value: attr("selected_user_ids"))],
          "buttonStyle(.borderless)"
        ]}
        selected_user_ids={Enum.into(@selected_user_ids, [])}
      >
        <Button
          :for={user <- @filtered_users}
          :if={user.id not in @selected_user_ids}
          phx-click="add"
          phx-value-id={user.id}
        >
          <HStack>
            <.user_profile
              user={user}
              online={LaxWeb.Presence.Live.online?(assigns, user)}
              size={:md}
            />
            <.username user={user} />
            <Spacer />
            <Image systemName="plus" style="foregroundStyle(.tint);" />
          </HStack>
        </Button>
      </List>

      <VStack
        template="chat_form"
        spacing="0"
        style="background(.bar, in: .rect(cornerRadius: 8)); background(content: :stroke); padding();"
      >
        <.chat_form
          form={@chat_form}
          target={@target}
          placeholder="Start a new message"
          phx-change="validate"
          phx-submit="submit"
        />
        <RoundedRectangle template="stroke" cornerRadius="8" style="stroke(.separator, lineWidth: 2);" />
      </VStack>

      <VStack template="group" spacing="0" :if={MapSet.size(@selected_user_ids) > 0}>
        <ScrollView axes="horizontal" style="background(.bar);">
          <HStack style="padding(.horizontal); padding(.vertical, 8); buttonStyle(.bordered); buttonBorderShape(.roundedRectangle); controlSize(.small);">
            <Button
              :for={user <- Enum.map(@selected_user_ids, fn id -> Enum.find(@users, &(&1.id == id)) end)}
              phx-click="remove"
              phx-value-id={user.id}
              style="fixedSize(horizontal: true, vertical: false);"
            >
              <HStack style="padding(.leading, -4);">
                <.user_profile
                  user={user}
                  online={LaxWeb.Presence.Live.online?(assigns, user)}
                  size={:xs}
                />
                <.username user={user} />
                <Spacer />
                <Image systemName="xmark" style="foregroundStyle(.tint);" />
              </HStack>
            </Button>
          </HStack>
        </ScrollView>
        <Divider />
      </VStack>
    </Group>
    """
  end

  def render(assigns, _interface) do
    ~LVN"""
    <Group
      style={[
        ~s[searchable(text: attr("filter"), placement: .navigationBarDrawer(displayMode: .always), prompt: "Add users")],
        "safeAreaInset(edge: .bottom, content: :chat_form)",
        "safeAreaInset(edge: .top, content: :group)",
        ~s[navigationTitle("New Message")]
      ]}
      filter={@filter}
      phx-change="filter"
    >
      <List
        style={[
          "listStyle(.plain)",
          ~s[animation(.default, value: attr("selected_user_ids"))]
        ]}
        selected_user_ids={Enum.into(@selected_user_ids, [])}
      >
        <Button
          :for={user <- @filtered_users}
          :if={user.id not in @selected_user_ids}
          phx-click="add"
          phx-value-id={user.id}
        >
          <HStack>
            <.user_profile
              user={user}
              online={LaxWeb.Presence.Live.online?(assigns, user)}
              size={:md}
            />
            <.username user={user} />
            <Spacer />
            <Image systemName="plus" style="foregroundStyle(.tint);" />
          </HStack>
        </Button>
      </List>

      <VStack
        template="chat_form"
        spacing="0"
        style="background(.bar);"
      >
        <Divider />
        <.chat_form
          form={@chat_form}
          placeholder="Start a new message"
          phx-change="validate"
          phx-submit="submit"
        />
      </VStack>

      <VStack template="group" spacing="0" :if={MapSet.size(@selected_user_ids) > 0}>
        <ScrollView axes="horizontal" style="background(.bar);">
          <HStack style="padding(.horizontal); padding(.vertical, 8); buttonStyle(.bordered); buttonBorderShape(.roundedRectangle); controlSize(.small);">
            <Button
              :for={user <- Enum.map(@selected_user_ids, fn id -> Enum.find(@users, &(&1.id == id)) end)}
              phx-click="remove"
              phx-value-id={user.id}
              style="fixedSize(horizontal: true, vertical: false);"
            >
              <HStack style="padding(.leading, -4);">
                <.user_profile
                  user={user}
                  online={LaxWeb.Presence.Live.online?(assigns, user)}
                  size={:xs}
                />
                <.username user={user} />
                <Spacer />
                <Image systemName="xmark" style="foregroundStyle(.tint);" />
              </HStack>
            </Button>
          </HStack>
        </ScrollView>
        <Divider />
      </VStack>
    </Group>
    """
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_live/user_components.ex
```ex
defmodule LaxWeb.UserLive.Components do
  use LaxWeb, :html

  attr :user, Lax.Users.User, required: true

  def username(assigns) do
    ~H"""
    <span class="text-sm text-white font-bold">
      <%= Lax.Users.User.display_name(@user) %>
    </span>
    """
  end

  attr :user, Lax.Users.User, required: true
  attr :size, :atom, values: [:xs, :md, :xl]
  attr :class, :string, default: nil
  attr :online, :boolean, default: nil

  def user_profile(assigns) do
    {size_class, indicator_class} =
      case assigns.size do
        :xs -> {"size-4 rounded", "size-1.5"}
        :md -> {"size-8 rounded-lg", "size-2"}
        :xl -> {"size-48 rounded-3xl", "size-4"}
      end

    assigns = assign(assigns, size_class: size_class, indicator_class: indicator_class)

    ~H"""
    <div style={"background-color: #{@user.display_color};"} class={["relative", @size_class, @class]}>
      <div
        :if={@online != nil}
        class={[
          "absolute -bottom-px -right-0.5 rounded-full ring-2 ring-zinc-950",
          @indicator_class,
          if(@online == true, do: "bg-emerald-500"),
          if(@online == false, do: "border border-zinc-500 bg-zinc-950")
        ]}
      />
    </div>
    """
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_live/user_components.swiftui.ex
```ex
defmodule LaxWeb.UserLive.Components.SwiftUI do
  use LiveViewNative.Component

  attr :user, Lax.Users.User, required: true

  def username(assigns) do
    ~LVN"""
    <Text>
      <%= Lax.Users.User.display_name(@user) %>
    </Text>
    """
  end

  attr :user, Lax.Users.User, required: true
  attr :size, :atom, values: [:xs, :md, :xl]
  attr :online, :boolean, default: nil

  def user_profile(%{size: :xs} = assigns) do
    ~LVN"""
    <ZStack alignment="bottomTrailing">
      <RoundedRectangle
        cornerRadius={6}
        style='fill(attr("display_color")); frame(width: 24, height: 24);'
        display_color={@user.display_color}
      />
      <.online_indicator :if={@online != nil} online={@online} size={@size} />
    </ZStack>
    """
  end

  def user_profile(%{size: :md} = assigns) do
    ~LVN"""
    <ZStack alignment="bottomTrailing">
      <RoundedRectangle
        cornerRadius={8}
        style='fill(attr("display_color")); frame(width: 32, height: 32);'
        display_color={@user.display_color}
      />
      <.online_indicator :if={@online != nil} online={@online} size={@size} />
    </ZStack>
    """
  end

  def user_profile(%{size: :xl} = assigns) do
    ~LVN"""
    <ZStack alignment="bottomTrailing" style="aspectRatio(1, contentMode: .fit);">
      <RoundedRectangle
        cornerRadius={16}
        style='fill(attr("display_color"));'
        display_color={@user.display_color}
      />
      <.online_indicator :if={@online != nil} online={@online} size={@size} />
    </ZStack>
    """
  end

  attr :online, :boolean, required: true
  attr :size, :atom, values: [:xs, :md, :xl]

  defp online_indicator(%{size: :xs} = assigns) do
    ~LVN"""
      <ZStack style='frame(width: 6, height: 6);'>
        <Circle :if={@online == true} style='fill(.green); frame(width: 10, height: 10); overlay(:border); padding(-1);' />
        <Circle :if={@online == false} style='fill(.gray); frame(width: 10, height: 10); overlay(:border); padding(-1);' />
        <Circle style='stroke(.background, lineWidth: 2);' />
      </ZStack>
    """
  end

  defp online_indicator(%{size: :md} = assigns) do
    ~LVN"""
      <ZStack style='frame(width: 10, height: 10);'>
        <Circle :if={@online == true} style='fill(.green); frame(width: 10, height: 10); overlay(:border); padding(-1);' />
        <Circle :if={@online == false} style='fill(.gray); frame(width: 10, height: 10); overlay(:border); padding(-1);' />
        <Circle style='stroke(.background, lineWidth: 2);' />
      </ZStack>
    """
  end

  defp online_indicator(%{size: :xl} = assigns) do
    ~LVN"""
      <ZStack style='frame(width: 32, height: 32);'>
        <Circle :if={@online == true} style='fill(.green); frame(width: 32, height: 32); overlay(:border); padding(-1);' />
        <Circle :if={@online == false} style='fill(.gray); frame(width: 32, height: 32); overlay(:border); padding(-1);' />
        <Circle style='stroke(.background, lineWidth: 4);' />
      </ZStack>
    """
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/chat_live.ex
```ex
defmodule LaxWeb.ChatLive do
  use LaxWeb, {:live_view, layout: :chat}
  use LaxNative, :live_view

  alias Lax.Chat
  alias Lax.Channels
  alias Lax.Messages.Message
  alias Lax.Users
  alias LaxWeb.ChatLive.ChannelChatComponent
  alias LaxWeb.ChatLive.ChannelFormComponent
  alias LaxWeb.ChatLive.ManageChannelsComponent

  import LaxWeb.ChatLive.Components
  import LaxWeb.DirectMessageLive.Components

  def render(assigns) do
    ~H"""
    <.container sidebar_width={sidebar_width(@current_user)}>
      <:sidebar>
        <.sidebar_header title="Workspace" />
        <.sidebar>
          <.sidebar_section>
            <.sidebar_subheader on_click={@current_user && JS.push("show_manage_channels")}>
              Channels
              <:actions :if={@current_user}>
                <.icon_button icon="hero-plus" phx-click="show_new_channel" />
              </:actions>
            </.sidebar_subheader>
            <.channel_item
              :for={channel <- @chat.channels}
              name={channel.name}
              selected={Chat.current?(@chat, channel)}
              active={Chat.has_activity?(@chat, channel)}
              phx-click={JS.patch(~p"/chat/#{channel.id}")}
            />
          </.sidebar_section>

          <.sidebar_section>
            <.sidebar_subheader>
              Direct messages
              <:actions>
                <.icon_button icon="hero-plus" phx-click={JS.navigate(~p"/direct-messages")} />
              </:actions>
            </.sidebar_subheader>
            <.direct_message_item
              :for={channel <- @chat.direct_messages}
              users={Chat.direct_message_users(@chat, channel)}
              selected={Chat.current?(@chat, channel)}
              active={Chat.has_activity?(@chat, channel)}
              online_fun={&LaxWeb.Presence.Live.online?(assigns, &1)}
              unread_count={Chat.unread_count(@chat, channel)}
              phx-click={JS.patch(~p"/chat/#{channel.id}")}
            />
          </.sidebar_section>

          <.notice :if={!@current_user}>
            Sign in to use the direct messaging feature.
          </.notice>

          <:bottom>
            <.app_store_cta />
          </:bottom>
        </.sidebar>
      </:sidebar>

      <.chat_header channel={@chat.current_channel} users_fun={&Chat.direct_message_users(@chat, &1)} />

      <.chat>
        <.message
          :for={message <- group_messages(@chat.messages)}
          message={message}
          user_detail_patch={~p"/chat/#{@chat.current_channel}?profile=#{message.sent_by_user}"}
          online={LaxWeb.Presence.Live.online?(assigns, message.sent_by_user)}
          time={Message.show_time(message, @current_user && @current_user.time_zone)}
          on_delete={
            @current_user && @current_user.id == message.sent_by_user_id &&
              JS.push("delete_message", value: %{id: message.id})
          }
          on_report={JS.push("report_message", value: %{id: message.id})}
        />
      </.chat>

      <.live_component
        :if={@current_user}
        id={"chat_component_#{@chat.current_channel.id}"}
        module={LaxWeb.ChatLive.ChannelChatComponent}
        chat={@chat}
      />

      <.notice :if={!@current_user} class="mx-4 mb-4 -mt-2">
        You are viewing this channel anonymously. Sign in to send messages.
      </.notice>

      <:right_sidebar
        :if={@user_profile}
        resize_event="resize_profile"
        width={profile_sidebar_width(@current_user)}
        min_width={300}
        max_width={700}
      >
        <.user_profile_sidebar
          user={@user_profile}
          online_fun={&LaxWeb.Presence.Live.online?(assigns, &1)}
          on_cancel={JS.patch(~p"/chat/#{@chat.current_channel}")}
        />
      </:right_sidebar>
    </.container>

    <.modal :if={@modal == :new_channel} id="new_channel_modal" show on_cancel={JS.push("hide_modal")}>
      <.live_component
        id="new_channel_form"
        module={__MODULE__.ChannelFormComponent}
        current_user={@current_user}
      />
    </.modal>

    <.modal
      :if={@modal == :manage_channels}
      id="manage_channels_modal"
      show
      on_cancel={JS.push("hide_modal")}
    >
      <.live_component
        id="manage_channels"
        module={__MODULE__.ManageChannelsComponent}
        current_user={@current_user}
      />
    </.modal>
    """
  end

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:domain, :home)
     |> assign(:modal, nil)
     |> assign(:chat, Chat.load(socket.assigns.current_user))
     |> assign(:channels, Channels.list(:channel))
     |> ChannelChatComponent.handle_form()
     |> LaxWeb.Presence.Live.track_online_users()
     |> assign(:swiftui_channel_form, to_form(%{}, as: :channel))}
  end

  def handle_params(params, _uri, socket) do
    case apply_chat_params(socket, params) do
      {:ok, socket} ->
        {:noreply,
         socket
         |> assign(:swiftui_tab, swiftui_tab_from_params(params))
         |> apply_profile_params(params)
         |> put_page_title()}

      {:error, socket} ->
        {:noreply, socket}
    end
  end

  def apply_chat_params(socket, %{"id" => channel_id}) do
    case Chat.select_channel(socket.assigns.chat, channel_id) do
      {:ok, chat} ->
        {:ok, assign(socket, :chat, chat)}

      {:error, :channel_not_found} ->
        {:error, push_navigate(socket, to: ~p"/")}
    end
  end

  def apply_chat_params(socket, _params) do
    {:ok, socket}
  end

  def apply_profile_params(socket, %{"profile" => user_id}) do
    assign(socket, :user_profile, Users.get_user!(user_id))
  end

  def apply_profile_params(socket, _params) do
    assign(socket, :user_profile, nil)
  end

  def handle_event("resize", %{"width" => width}, socket) do
    if user = socket.assigns.current_user do
      {:ok, user} = Users.update_user_ui_settings(user, %{channels_sidebar_width: width})
      {:noreply, assign(socket, :current_user, user)}
    else
      {:noreply, socket}
    end
  end

  def handle_event("resize_profile", %{"width" => width}, socket) do
    if user = socket.assigns.current_user do
      {:ok, user} = Users.update_user_ui_settings(user, %{profile_sidebar_width: width})
      {:noreply, assign(socket, :current_user, user)}
    else
      {:noreply, socket}
    end
  end

  def handle_event("show_new_channel", _params, socket) do
    {:noreply, assign(socket, :modal, :new_channel)}
  end

  def handle_event("show_manage_channels", _params, socket) do
    {:noreply, assign(socket, :modal, :manage_channels)}
  end

  def handle_event("hide_modal", _params, socket) do
    {:noreply, assign(socket, :modal, nil)}
  end

  def handle_event("delete_message", %{"id" => message_id}, socket) do
    {:noreply, update(socket, :chat, &Chat.delete_message(&1, message_id))}
  end

  def handle_event("report_message", %{"id" => _message_id}, socket) do
    Process.sleep(500)

    # TODO: Handle reported messages so that they may be removed by an admin
    message =
      """
      Message has been reported as abusive or insensitive, an admin will review the message and remove it if it meets the criteria for removal.
      """

    {:noreply, put_flash(socket, :info, message)}
  end

  def handle_event("delete_user", _params, socket) do
    Users.delete_user(socket.assigns.current_user)
    {:noreply, push_navigate(socket, to: ~p"/users/sign-in")}
  end

  ## SwiftUI

  def handle_event("swiftui_tab_selection", %{"selection" => selection}, socket) do
    {:noreply, push_patch(socket, to: ~p"/?#{%{swiftui_tab: selection}}", replace: true)}
  end

  def handle_event("swiftui_navigate", %{"to" => to}, socket) do
    {:noreply, push_navigate(socket, to: to)}
  end

  def handle_event("swiftui_select_chat", %{"selection" => id}, socket) do
    {:noreply, apply_chat_params(socket, %{"id" => id})}
  end

  def handle_event("swiftui_user_detail_patch", %{"profile" => _user_id} = params, socket) do
    {:noreply, apply_profile_params(socket, params)}
  end

  def handle_event("swiftui_user_detail_patch", _params, socket) do
    {:noreply, assign(socket, user_profile: nil)}
  end

  def handle_event("swiftui_unregister_apns", _params, socket) do
    {:ok, user} = Users.update_user_apns_device_token(socket.assigns.current_user, [])
    {:noreply, assign(socket, :current_user, user)}
  end

  def handle_event("swiftui_launch_notification", %{"id" => id, "replace" => replace}, socket) do
    {:noreply, push_navigate(socket, to: ~p"/chat/#{id}", replace: replace)}
  end

  def handle_event("swiftui_register_apns" = event, params, socket) do
    {:noreply, push_event(socket, event, params)}
  end

  def handle_event("swiftui_apns_device_token", %{"device_token" => device_token}, socket) do
    {:ok, user} = Users.update_user_apns_device_token(socket.assigns.current_user, [device_token])
    {:noreply, assign(socket, :current_user, user)}
  end

  def handle_event("swiftui_apns_device_token", %{"error" => _error}, socket) do
    {:noreply, put_flash(socket, :error, "Failed to register with push notification service")}
  end

  def handle_event("swiftui_leave_channel", params, socket) do
    ManageChannelsComponent.handle_event("leave", params, socket)
  end

  def handle_event("swiftui_join_channel", params, socket) do
    ManageChannelsComponent.handle_event("join", params, socket)
  end

  def handle_event("swiftui_channel_form_validate", params, socket) do
    {:noreply, new_socket} = ChannelFormComponent.handle_event("validate", params, socket)
    {:noreply, assign(socket, :swiftui_channel_form, new_socket.assigns.form)}
  end

  def handle_event("swiftui_channel_form_submit", params, socket) do
    case ChannelFormComponent.create_channel(socket.assigns.current_user, params, false) do
      nil ->
        {:noreply, socket}

      changeset ->
        {:noreply,
         socket
         |> assign(:swiftui_channel_form, to_form(%{}, as: :channel))
         |> put_flash(
           :error,
           elem(Enum.into(changeset.errors, %{}).name, 0)
         )}
    end
  end

  def handle_event("swiftui_" <> event, params, socket) do
    ChannelChatComponent.handle_event(event, params, socket)
  end

  ## /SwiftUI

  def handle_info({ChannelFormComponent, {:create_channel, channel, patch?}}, socket) do
    socket = assign(socket, :modal, nil)

    if patch? do
      {:noreply, push_patch(socket, to: ~p"/chat/#{channel}")}
    else
      {:noreply, socket}
    end
  end

  def handle_info({ManageChannelsComponent, :update_channels}, socket) do
    {:noreply, update(socket, :chat, &Chat.reload_channels(&1))}
  end

  def handle_info({Lax.Channels, {:new_channel, _channel}}, socket) do
    {:noreply, update(socket, :chat, &Chat.reload_channels(&1))}
  end

  def handle_info({Lax.Messages, {:sent_message, message}}, socket) do
    {:noreply, update(socket, :chat, &Chat.receive_sent_message(&1, message))}
  end

  def handle_info({Lax.Messages, {:deleted_message, channel_message_ids}}, socket) do
    {:noreply, update(socket, :chat, &Chat.receive_deleted_message(&1, channel_message_ids))}
  end

  def handle_info({:link_preview, _tag, link_preview}, socket) do
    {:noreply, update(socket, :chat, &Chat.receive_link_preview(&1, link_preview))}
  end

  ## Helpers

  def sidebar_width(nil), do: 250
  def sidebar_width(current_user), do: current_user.ui_settings.channels_sidebar_width

  def profile_sidebar_width(nil), do: 500
  def profile_sidebar_width(current_user), do: current_user.ui_settings.profile_sidebar_width

  def swiftui_tab_from_params(%{"swiftui_tab" => "direct_messages"}), do: :direct_messages
  def swiftui_tab_from_params(_otherwise), do: :home
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/chat_live.swiftui.ex
```ex
defmodule LaxWeb.ChatLive.SwiftUI do
  use LaxNative, [:render_component, format: :swiftui]

  alias Lax.Chat
  alias Lax.Messages.Message

  import LaxWeb.ChatLive.Components, only: [group_messages: 1]
  import LaxWeb.ChatLive.Components.SwiftUI
  import LaxWeb.DirectMessageLive.Components.SwiftUI
  import LaxWeb.UserLive.Components.SwiftUI

  def render(assigns, %{"target" => "macos" = target}) do
    assigns = assign(assigns, target: target)

    ~LVN"""
    <.header>
      Workspace
      <:actions placement="automatic">
        <.link :if={!@current_user} navigate={~p"/users/register"} class="font-weight-semibold fg-tint">
          Sign in or register
        </.link>
        <.user_options :if={@current_user}>
          <:option navigate={~p"/users/sign-out"} system_image="arrow.up.backward.square">
            Sign out
          </:option>
          <:option :if={length(@current_user.apns_device_token) == 0} on_click="swiftui_register_apns" system_image="bell.badge">
            Enable notifications
          </:option>
          <:option :if={length(@current_user.apns_device_token) > 0} on_click="swiftui_unregister_apns" system_image="bell.badge.slash">
            Disable notifications
          </:option>
          <:option on_click="delete_user" system_image="person.fill.xmark" role={:destructive}>
            Delete account
          </:option>
          <Text><%= Lax.Users.User.display_name(@current_user) %></Text>
        </.user_options>
      </:actions>
      <:actions placement="automatic">
        <Group>
          <.link :if={@current_user != nil} navigate={~p"/new-direct-message"}>
            <Label systemImage="square.and.pencil">
              Direct Message
            </Label>
          </.link>
        </Group>
      </:actions>
    </.header>

    <NavigationSplitView>
      <Group template="sidebar">
        <.workspace_list id="sidebar_list" selection={@chat.current_channel.id} phx-change="swiftui_select_chat">
          <.workspace_section title="Channels">
            <.channel_item
              :for={channel <- @chat.channels}
              name={channel.name}
              active={Chat.has_activity?(@chat, channel)}
              unread_count={Chat.unread_count(@chat, channel)}
              target={@target}
              id={channel.id}
            >
              <:menu_items>
                <Button role="destructive" phx-click="swiftui_leave_channel" phx-value-id={channel.id}>
                  <Label systemImage="rectangle.portrait.and.arrow.right">Leave</Label>
                </Button>
              </:menu_items>
            </.channel_item>
          </.workspace_section>

          <.workspace_section title="Direct messages">
            <.direct_message_item
              :for={channel <- @chat.direct_messages}
              users={Chat.direct_message_users(@chat, channel)}
              active={Chat.has_activity?(@chat, channel)}
              online_fun={&LaxWeb.Presence.Live.online?(assigns, &1)}
              unread_count={Chat.unread_count(@chat, channel)}
              target={@target}
              id={channel.id}
            />
            <:footer :if={!@current_user}>
              Sign in to use the direct messaging feature.
            </:footer>
          </.workspace_section>
        </.workspace_list>
      </Group>
      <Group template="content" :if={@chat}>
        <.user_profile_sidebar
          user={@user_profile}
          online_fun={&LaxWeb.Presence.Live.online?(assigns, &1)}
          current_user={@current_user}
        >
          <.chat animation_key={length(@chat.messages)} target={@target}>
            <.message
              :for={message <- Enum.reverse(group_messages(@chat.messages))}
              message_id={message.id}
              user={message.sent_by_user}
              user_detail_patch={message.sent_by_user.id}
              online={LaxWeb.Presence.Live.online?(assigns, message.sent_by_user)}
              time={Message.show_time(message, @current_user && @current_user.time_zone)}
              text={message.text}
              compact={message.compact}
              on_delete={@current_user && @current_user.id == message.sent_by_user_id && "delete_message"}
              on_report="report_message"
            />
            <:bottom_bar>
              <.chat_form
                :if={@current_user}
                placeholder={LaxWeb.ChatLive.ChannelChatComponent.placeholder(@chat.current_channel)}
                form={@chat_form}
                target={@target}
                phx-change="swiftui_validate"
                phx-submit="swiftui_submit"
              />
              <.chat_signed_out_notice :if={!@current_user} />
            </:bottom_bar>
          </.chat>
        </.user_profile_sidebar>
      </Group>
    </NavigationSplitView>
    """
  end

  def render(%{live_action: :chat} = assigns, _interface) do
    ~LVN"""
    <NotificationLaunchObserver onReceive="swiftui_launch_notification" />

    <.header>
      Workspace
      <:actions placement="primaryAction">
        <.link :if={!@current_user} navigate={~p"/users/register"} class="font-weight-semibold fg-tint">
          Sign in or register
        </.link>
        <.user_options :if={@current_user}>
          <:option navigate={~p"/users/sign-out"} system_image="arrow.up.backward.square">
            Sign out
          </:option>
          <:option :if={length(@current_user.apns_device_token) == 0} on_click="swiftui_register_apns" system_image="bell.badge">
            Enable notifications
          </:option>
          <:option :if={length(@current_user.apns_device_token) > 0} on_click="swiftui_unregister_apns" system_image="bell.badge.slash">
            Disable notifications
          </:option>
          <:option on_click="delete_user" system_image="person.fill.xmark" role={:destructive}>
            Delete account
          </:option>
          <.user_profile :if={@current_user} user={@current_user} size={:md} online />
        </.user_options>
      </:actions>
      <:actions placement="navigation">
        <Group>
          <Menu :if={@current_user != nil and @swiftui_tab == :home}>
            <Image template="label" systemName="plus" />

            <.button phx-click="show_manage_channels">
              <Label systemImage="person.badge.plus">Join Channel</Label>
            </.button>
            <.button phx-click="show_new_channel">
              <Label systemImage="square.and.pencil">Create Channel</Label>
            </.button>
          </Menu>
          <.link :if={@current_user != nil and @swiftui_tab == :direct_messages} navigate={~p"/new-direct-message"}>
            <Image systemName="square.and.pencil" />
          </.link>
        </Group>
      </:actions>
    </.header>

    <.tab_bar phx-change="swiftui_tab_selection" selection={@swiftui_tab}>
      <.tab tag={:home} name="Home" icon_system_name="house">
        <.workspace_list id="home_list">
          <.workspace_section title="Channels">
            <.channel_item
              :for={channel <- @chat.channels}
              name={channel.name}
              active={Chat.has_activity?(@chat, channel)}
              unread_count={Chat.unread_count(@chat, channel)}
              navigate={~p"/chat/#{channel}"}
            >
              <:menu_items>
                <Button role="destructive" phx-click="swiftui_leave_channel" phx-value-id={channel.id}>
                  <Label systemImage="rectangle.portrait.and.arrow.right">Leave</Label>
                </Button>
              </:menu_items>
            </.channel_item>
          </.workspace_section>

          <.workspace_section title="Direct messages">
            <.direct_message_item
              :for={channel <- @chat.direct_messages}
              users={Chat.direct_message_users(@chat, channel)}
              active={Chat.has_activity?(@chat, channel)}
              online_fun={&LaxWeb.Presence.Live.online?(assigns, &1)}
              unread_count={Chat.unread_count(@chat, channel)}
              navigate={~p"/chat/#{channel}"}
            />
            <:footer :if={!@current_user}>
              Sign in to use the direct messaging feature.
            </:footer>
          </.workspace_section>
        </.workspace_list>
      </.tab>

      <.tab tag={:direct_messages} name="DMs" icon_system_name="bubble.left.and.text.bubble.right">
        <Text :if={!@current_user} style="font(.subheadline);">
          Sign in to use the direct messaging feature.
        </Text>
        <.direct_message_list :if={@current_user}>
          <.direct_message_item_row
            :for={message <- @chat.latest_message_in_direct_messages}
            current_user={@current_user}
            users={Chat.direct_message_users(@chat, message.channel)}
            online_fun={&LaxWeb.Presence.Live.online?(assigns, &1)}
            latest_message={message}
            selected={Chat.current?(@chat, message.channel)}
            navigate={~p"/chat/#{message.channel}"}
          />
        </.direct_message_list>
      </.tab>
    </.tab_bar>

    <VStack
      :if={@modal == :manage_channels}
      style={[
        "hidden()",
        ~s[confirmationDialog("Join Channels", isPresented: attr("isPresented"), titleVisibility: .visible, actions: :actions)]
      ]}
      isPresented={true}
      phx-change="hide_modal"
    >
      <Group template="actions">
        <Button
          :for={channel <- @channels}
          :if={not Enum.member?(@chat.channels, channel)}
          phx-click="swiftui_join_channel"
          phx-value-id={channel.id}
        >
          <%= channel.name %>
        </Button>
      </Group>
    </VStack>

    <VStack
      :if={@modal == :new_channel}
      style={[
        "hidden()",
        ~s[alert("Create Channel", isPresented: attr("isPresented"), actions: :actions, message: :message)]
      ]}
      isPresented={true}
      phx-change="hide_modal"
    >
      <Group template="actions">
        <.form for={@swiftui_channel_form} phx-change="swiftui_channel_form_validate" phx-submit="swiftui_channel_form_submit">
          <.input field={Map.put(@swiftui_channel_form[:name], :errors, [])} label="Name" style="textInputAutocapitalization(.never); autocorrectionDisabled();" />
          <.button type="submit">Create</.button>
        </.form>
        <Button role="cancel">Cancel</Button>
      </Group>
    </VStack>
    """
  end

  def render(%{live_action: :chat_selected} = assigns, _interface) do
    ~LVN"""
    <NotificationLaunchObserver onReceive="swiftui_launch_notification" replace />

    <.chat_header channel={@chat.current_channel} users_fun={&Chat.direct_message_users(@chat, &1)} />

    <.user_profile_sidebar
      user={@user_profile}
      online_fun={&LaxWeb.Presence.Live.online?(assigns, &1)}
      current_user={@current_user}
    >
      <.chat animation_key={length(@chat.messages)}>
        <.message
          :for={message <- Enum.reverse(group_messages(@chat.messages))}
          message_id={message.id}
          user={message.sent_by_user}
          user_detail_patch={message.sent_by_user.id}
          online={LaxWeb.Presence.Live.online?(assigns, message.sent_by_user)}
          time={Message.show_time(message, @current_user && @current_user.time_zone)}
          text={message.text}
          compact={message.compact}
          on_delete={@current_user && @current_user.id == message.sent_by_user_id && "delete_message"}
          on_report="report_message"
        />
        <:bottom_bar>
          <.chat_form
            :if={@current_user}
            placeholder={LaxWeb.ChatLive.ChannelChatComponent.placeholder(@chat.current_channel)}
            form={@chat_form}
            phx-change="swiftui_validate"
            phx-submit="swiftui_submit"
          />
          <.chat_signed_out_notice :if={!@current_user} />
        </:bottom_bar>
      </.chat>
    </.user_profile_sidebar>
    """
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/direct_message_live.ex
```ex
defmodule LaxWeb.DirectMessageLive do
  use LaxWeb, {:live_view, layout: :chat}

  alias Lax.Chat
  alias Lax.Messages.Message
  alias Lax.Users
  alias LaxWeb.DirectMessageLive.NewDirectMessageLive

  import LaxWeb.ChatLive.Components
  import LaxWeb.DirectMessageLive.Components

  def render(assigns) do
    ~H"""
    <.container
      sidebar_width={sidebar_width(@current_user)}
      sidebar_min_width={288}
      sidebar_max_width={1024}
    >
      <:sidebar>
        <.sidebar_header title="Direct messages">
          <:actions :if={@current_user}>
            <.icon_button icon="hero-plus-mini" phx-click={JS.patch(~p"/direct-messages")} />
          </:actions>
        </.sidebar_header>

        <.notice :if={!@current_user} class="mx-4">
          Sign in to use the direct messaging feature.
        </.notice>

        <.direct_message_list>
          <.direct_message_item_row
            :for={message <- @chat.latest_message_in_direct_messages}
            current_user={@current_user}
            users={Chat.direct_message_users(@chat, message.channel)}
            online_fun={&LaxWeb.Presence.Live.online?(assigns, &1)}
            latest_message={message}
            selected={Chat.current?(@chat, message.channel)}
            phx-click={JS.patch(~p"/direct-messages/#{message.channel}")}
          />
        </.direct_message_list>
      </:sidebar>

      <.render_action :if={@current_user} {assigns} />

      <:right_sidebar
        :if={@user_profile}
        resize_event="resize_profile"
        width={profile_sidebar_width(@current_user)}
        min_width={300}
        max_width={700}
      >
        <.user_profile_sidebar
          user={@user_profile}
          online_fun={&LaxWeb.Presence.Live.online?(assigns, &1)}
          on_cancel={JS.patch(~p"/direct-messages/#{@chat.current_channel}")}
        />
      </:right_sidebar>
    </.container>
    """
  end

  def render_action(%{live_action: :new} = assigns) do
    ~H"""
    <%= live_render(
      @socket,
      NewDirectMessageLive,
      id: "new_direct_message",
      session: %{
        "initial_user_ids" => @initial_user_ids
      },
      container: {:div, class: "flex flex-1 flex-col"}
    ) %>
    """
  end

  def render_action(%{live_action: :show} = assigns) do
    ~H"""
    <.chat_header channel={@chat.current_channel} users_fun={&Chat.direct_message_users(@chat, &1)} />

    <.chat>
      <.message
        :for={message <- group_messages(@chat.messages)}
        message={message}
        user_detail_patch={
          ~p"/direct-messages/#{@chat.current_channel}?profile=#{message.sent_by_user}"
        }
        online={LaxWeb.Presence.Live.online?(assigns, message.sent_by_user)}
        time={Message.show_time(message, @current_user && @current_user.time_zone)}
        on_delete={
          @current_user && @current_user.id == message.sent_by_user_id &&
            JS.push("delete_message", value: %{id: message.id})
        }
      />
    </.chat>

    <.live_component
      id={"chat_component_#{@chat.current_channel.id}"}
      module={LaxWeb.ChatLive.ChannelChatComponent}
      chat={@chat}
    />
    """
  end

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:domain, :direct_messages)
     |> assign(:chat, Chat.load(socket.assigns.current_user))
     |> LaxWeb.Presence.Live.track_online_users()}
  end

  def handle_params(params, _uri, socket) do
    case apply_chat_params(socket, params) do
      {:ok, socket} ->
        {:noreply,
         socket
         |> apply_profile_params(params)
         |> apply_initial_user_ids_params(params)}

      {:error, socket} ->
        {:noreply, socket}
    end
  end

  def apply_chat_params(socket, %{"id" => channel_id}) do
    case Chat.select_channel(socket.assigns.chat, channel_id) do
      {:ok, chat} ->
        {:ok,
         socket
         |> assign(:chat, chat)
         |> put_page_title()}

      {:error, :channel_not_found} ->
        {:error, push_navigate(socket, to: ~p"/")}
    end
  end

  def apply_chat_params(socket, _params) do
    {:ok,
     socket
     |> update(:chat, &Chat.select_channel(&1, nil))
     |> assign(:page_title, "New message")}
  end

  def apply_profile_params(socket, %{"profile" => user_id}) do
    assign(socket, :user_profile, Users.get_user!(user_id))
  end

  def apply_profile_params(socket, _params) do
    assign(socket, :user_profile, nil)
  end

  def apply_initial_user_ids_params(socket, %{"to_user" => user_id}) do
    assign(socket, :initial_user_ids, [user_id])
  end

  def apply_initial_user_ids_params(socket, _params) do
    assign(socket, :initial_user_ids, [])
  end

  def handle_event("resize", %{"width" => width}, socket) do
    if user = socket.assigns.current_user do
      {:ok, user} = Users.update_user_ui_settings(user, %{direct_messages_sidebar_width: width})
      {:noreply, assign(socket, :current_user, user)}
    else
      {:noreply, socket}
    end
  end

  def handle_event("resize_profile", %{"width" => width}, socket) do
    if user = socket.assigns.current_user do
      {:ok, user} = Users.update_user_ui_settings(user, %{profile_sidebar_width: width})
      {:noreply, assign(socket, :current_user, user)}
    else
      {:noreply, socket}
    end
  end

  def handle_event("delete_message", %{"id" => message_id}, socket) do
    {:noreply, update(socket, :chat, &Chat.delete_message(&1, message_id))}
  end

  def handle_info({NewDirectMessageLive, {:create_direct_message, channel}}, socket) do
    {:noreply,
     socket
     |> assign(:modal, nil)
     |> push_patch(to: ~p"/direct-messages/#{channel}")}
  end

  def handle_info({Lax.Channels, {:new_channel, _channel}}, socket) do
    {:noreply, update(socket, :chat, &Chat.reload_channels(&1))}
  end

  def handle_info({Lax.Messages, {:sent_message, message}}, socket) do
    {:noreply, update(socket, :chat, &Chat.receive_sent_message(&1, message))}
  end

  def handle_info({Lax.Messages, {:deleted_message, channel_message_ids}}, socket) do
    {:noreply, update(socket, :chat, &Chat.receive_deleted_message(&1, channel_message_ids))}
  end

  def handle_info({:link_preview, _tag, link_preview}, socket) do
    {:noreply, update(socket, :chat, &Chat.receive_link_preview(&1, link_preview))}
  end

  ## Helpers

  def sidebar_width(nil), do: 500
  def sidebar_width(current_user), do: current_user.ui_settings.direct_messages_sidebar_width

  def profile_sidebar_width(nil), do: 500
  def profile_sidebar_width(current_user), do: current_user.ui_settings.profile_sidebar_width
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_confirmation_instructions_live.ex
```ex
defmodule LaxWeb.UserConfirmationInstructionsLive do
  use LaxWeb, {:live_view, layout: :chat}

  alias Lax.Users

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-sm py-32">
      <.header class="text-center">
        No confirmation instructions received?
        <:subtitle>We'll send a new confirmation link to your inbox</:subtitle>
      </.header>

      <.simple_form for={@form} id="resend_confirmation_form" phx-submit="send_instructions">
        <.input field={@form[:email]} type="email" placeholder="Email" required />
        <:actions>
          <.button phx-disable-with="Sending..." class="w-full">
            Resend confirmation instructions
          </.button>
        </:actions>
      </.simple_form>

      <p class="text-center mt-4">
        <.link href={~p"/users/register"}>Register</.link>
        | <.link href={~p"/users/sign-in"}>Sign in</.link>
      </p>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, form: to_form(%{}, as: "user"), domain: :user)}
  end

  def handle_event("send_instructions", %{"user" => %{"email" => email}}, socket) do
    if user = Users.get_user_by_email(email) do
      Users.deliver_user_confirmation_instructions(
        user,
        &url(~p"/users/confirm/#{&1}")
      )
    end

    info =
      "If your email is in our system and it has not been confirmed yet, you will receive an email with instructions shortly."

    {:noreply,
     socket
     |> put_flash(:info, info)
     |> redirect(to: ~p"/")}
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_confirmation_live.ex
```ex
defmodule LaxWeb.UserConfirmationLive do
  use LaxWeb, {:live_view, layout: :chat}

  alias Lax.Users

  def render(%{live_action: :edit} = assigns) do
    ~H"""
    <div class="mx-auto max-w-sm py-32">
      <.header class="text-center">Confirm Account</.header>

      <.simple_form for={@form} id="confirmation_form" phx-submit="confirm_account">
        <input type="hidden" name={@form[:token].name} value={@form[:token].value} />
        <:actions>
          <.button phx-disable-with="Confirming..." class="w-full">Confirm my account</.button>
        </:actions>
      </.simple_form>

      <p class="text-center mt-4">
        <.link href={~p"/users/register"}>Register</.link>
        | <.link href={~p"/users/sign-in"}>Sign in</.link>
      </p>
    </div>
    """
  end

  def mount(%{"token" => token}, _session, socket) do
    form = to_form(%{"token" => token}, as: "user")
    {:ok, assign(socket, form: form, domain: :user), temporary_assigns: [form: nil]}
  end

  # Do not log in the user after confirmation to avoid a
  # leaked token giving the user access to the account.
  def handle_event("confirm_account", %{"user" => %{"token" => token}}, socket) do
    case Users.confirm_user(token) do
      {:ok, _} ->
        {:noreply,
         socket
         |> put_flash(:info, "User confirmed successfully.")
         |> redirect(to: ~p"/")}

      :error ->
        # If there is a current user and the account was already confirmed,
        # then odds are that the confirmation link was already visited, either
        # by some automation or by the user themselves, so we redirect without
        # a warning message.
        case socket.assigns do
          %{current_user: %{confirmed_at: confirmed_at}} when not is_nil(confirmed_at) ->
            {:noreply, redirect(socket, to: ~p"/")}

          %{} ->
            {:noreply,
             socket
             |> put_flash(:error, "User confirmation link is invalid or it has expired.")
             |> redirect(to: ~p"/")}
        end
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_forgot_password_live.ex
```ex
defmodule LaxWeb.UserForgotPasswordLive do
  use LaxWeb, {:live_view, layout: :chat}
  use LaxNative, :live_view

  alias Lax.Users

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-sm py-32">
      <.header class="text-center">
        Forgot your password?
        <:subtitle>We'll send a password reset link to your inbox</:subtitle>
      </.header>

      <.simple_form for={@form} id="reset_password_form" phx-submit="send_email">
        <.input field={@form[:email]} type="email" placeholder="Email" required />
        <:actions>
          <.button phx-disable-with="Sending..." class="w-full">
            Send password reset instructions
          </.button>
        </:actions>
      </.simple_form>
      <p class="text-center text-sm mt-4">
        <.link href={~p"/users/register"}>Register</.link>
        | <.link href={~p"/users/sign-in"}>Sign in</.link>
      </p>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, form: to_form(%{}, as: "user"), domain: :user)}
  end

  def handle_event("send_email", %{"user" => %{"email" => email}}, socket) do
    if user = Users.get_user_by_email(email) do
      Users.deliver_user_reset_password_instructions(
        user,
        &url(~p"/users/reset-password/#{&1}")
      )
    end

    info =
      "If your email is in our system, you will receive instructions to reset your password shortly."

    {:noreply,
     socket
     |> put_flash(:info, info)
     |> redirect(to: ~p"/")}
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_forgot_password_live.swiftui.ex
```ex
defmodule LaxWeb.UserForgotPasswordLive.SwiftUI do
  use LaxNative, [:render_component, format: :swiftui]

  def render(assigns, _) do
    ~LVN"""
    <.header>
      Forgot your password?
      <:subtitle>We'll send a password reset link to your inbox</:subtitle>
      <:actions>
        <.link navigate={~p"/users/register"}>Register</.link>
      </:actions>
    </.header>

    <.simple_form for={@form} id="reset_password_form" phx-submit="send_email">
      <.input field={@form[:email]} type="TextField" placeholder="Email" />
      <:actions>
        <.button type="submit">
          Send password reset instructions
        </.button>
      </:actions>
    </.simple_form>
    """
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_login_live.ex
```ex
defmodule LaxWeb.UserLoginLive do
  use LaxWeb, {:live_view, layout: :chat}
  use LaxNative, :live_view

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-sm py-32">
      <.header class="text-center">
        Sign in to account
        <:subtitle>
          Don't have an account?
          <.link navigate={~p"/users/register"} class="font-semibold text-brand hover:underline">
            Sign up
          </.link>
          for an account now.
        </:subtitle>
      </.header>

      <.simple_form for={@form} id="login_form" action={~p"/users/sign-in"} phx-update="ignore">
        <.input field={@form[:email]} type="email" label="Email" required />
        <.input field={@form[:password]} type="password" label="Password" required />

        <:actions>
          <.input field={@form[:remember_me]} type="checkbox" label="Keep me logged in" />
          <.link href={~p"/users/reset-password"} class="text-sm text-white font-semibold">
            Forgot your password?
          </.link>
        </:actions>
        <:actions>
          <.button phx-disable-with="Signing in..." class="w-full">
            Sign in
          </.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    email = Phoenix.Flash.get(socket.assigns.flash, :email)
    form = to_form(%{"email" => email}, as: "user")
    {:ok, assign(socket, form: form, domain: :user), temporary_assigns: [form: form]}
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_login_live.swiftui.ex
```ex
defmodule LaxWeb.UserLoginLive.SwiftUI do
  use LaxNative, [:render_component, format: :swiftui]

  def render(assigns, _) do
    ~LVN"""
    <.header>
      Sign in to account
      <:actions>
        <.link navigate={~p"/users/register"} class="font-weight-semibold fg-tint">
          Sign up
        </.link>
      </:actions>
    </.header>

    <.simple_form for={@form} id="login_form" action={~p"/users/sign-in"} phx-update="ignore">
      <Section>
        <.input class="keyboardType(.emailAddress)" field={@form[:email]} type="TextField" label="Email" />
        <.input field={@form[:password]} type="SecureField" label="Password" />

        <Group template="footer">
          <.link navigate={~p"/users/reset-password"} class="font-caption font-weight-semibold">
            Forgot your password?
          </.link>
        </Group>
      </Section>

      <Section>
        <.input field={@form[:remember_me]} type="Toggle" label="Keep me logged in" />
      </Section>

      <:actions>
        <.button type="submit">
          <Text>Sign in<Text verbatim=" " /><Image systemName="arrow.right" /></Text>
        </.button>
      </:actions>
    </.simple_form>
    """
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_registration_live.ex
```ex
defmodule LaxWeb.UserRegistrationLive do
  use LaxWeb, {:live_view, layout: :chat}
  use LaxNative, :live_view

  alias Lax.Users
  alias Lax.Users.User

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-sm py-32">
      <.header class="text-center">
        Register for an account
        <:subtitle>
          Already registered?
          <.link navigate={~p"/users/sign-in"} class="font-semibold text-brand hover:underline">
            Sign in
          </.link>
          to your account now.
        </:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="registration_form"
        phx-submit="save"
        phx-change="validate"
        phx-trigger-action={@trigger_submit}
        action={~p"/users/sign-in?_action=registered"}
        method="post"
      >
        <.error :if={@check_errors}>
          Oops, something went wrong! Please check the errors below.
        </.error>

        <.input field={@form[:email]} type="email" label="Email" required />
        <.input field={@form[:username]} label="Username" required />
        <.input field={@form[:password]} type="password" label="Password" required />

        <.input
          field={@form[:terms_of_service]}
          type="checkbox"
          label={
            ~H|<span>I agree to the <.link href="https://github.com/jtormey/lax/blob/main/native/swiftui/TERMS.md" target="_blank" class="underline">Terms of Service</.link></span>|
          }
          required
        />

        <input
          type="hidden"
          id={@form[:time_zone].id}
          name={@form[:time_zone].name}
          phx-hook="SetTimeZoneValue"
          phx-update="ignore"
        />

        <:actions>
          <.button phx-disable-with="Creating account..." class="w-full">Create an account</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    changeset = Users.change_user_registration(%User{})

    socket =
      socket
      |> assign(:domain, :user)
      |> assign(trigger_submit: false, check_errors: false)
      |> assign_form(changeset)
      # SwiftUI
      |> assign(:user_params, %{})

    {:ok, socket, temporary_assigns: [form: nil]}
  end

  def handle_event("save", %{"user" => user_params}, socket) do
    # SwiftUI
    socket = update(socket, :user_params, &Map.merge(&1, user_params))
    user_params = socket.assigns.user_params
    # /SwiftUI

    case Users.register_user(user_params) do
      {:ok, user} ->
        {:ok, _} =
          Users.deliver_user_confirmation_instructions(
            user,
            &url(~p"/users/confirm/#{&1}")
          )

        changeset = Users.change_user_registration(user)
        {:noreply, socket |> assign(trigger_submit: true) |> assign_form(changeset)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, socket |> assign(check_errors: true) |> assign_form(changeset)}
    end
  end

  def handle_event("validate", %{"user" => user_params}, socket) do
    # SwiftUI
    socket = update(socket, :user_params, &Map.merge(&1, user_params))
    user_params = socket.assigns.user_params
    # /SwiftUI

    changeset = Users.change_user_registration(%User{}, user_params)
    {:noreply, assign_form(socket, Map.put(changeset, :action, :validate))}
  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do
    form = to_form(changeset, as: "user")

    if changeset.valid? do
      assign(socket, form: form, check_errors: false)
    else
      assign(socket, form: form)
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_registration_live.swiftui.ex
```ex
defmodule LaxWeb.UserRegistrationLive.SwiftUI do
  use LaxNative, [:render_component, format: :swiftui]

  def render(assigns, _) do
    ~LVN"""
    <.header>
      Register
      <:actions>
        <.link navigate={~p"/users/sign-in"} class="font-weight-semibold fg-tint">
          Sign in
        </.link>
      </:actions>
    </.header>

    <.simple_form
      for={@form}
      id="registration_form"
      phx-submit="save"
      phx-change="validate"
      phx-trigger-action={@trigger_submit}
      action={~p"/users/sign-in?_action=registered"}
      method="post"
    >
      <.error :if={@check_errors}>
        Oops, something went wrong! Please check the errors below.
      </.error>

      <.input field={@form[:email]} type="TextField" label="Email" class="keyboardType(.emailAddress)" autocomplete="off" />
      <.input field={@form[:username]} type="TextField" label="Username" autocomplete="off" />
      <.input field={@form[:password]} type="SecureField" label="Password" />
      <.input field={@form[:time_zone]} type="Picker" label="Time Zone" options={time_zone_options()} />

      <.input
        field={@form[:terms_of_service]}
        type="Toggle"
        label={~LVN|<.link href="https://github.com/jtormey/lax/blob/main/native/swiftui/TERMS.md">I agree to the Terms of Service</.link>|}
      />

      <:actions>
        <.button type="submit">
          Create an account
        </.button>
      </:actions>
    </.simple_form>
    """
  end

  def time_zone_options() do
    Enum.map(Tzdata.zone_list(), &{&1, &1})
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_reset_password_live.ex
```ex
defmodule LaxWeb.UserResetPasswordLive do
  use LaxWeb, {:live_view, layout: :chat}

  alias Lax.Users

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-sm py-32">
      <.header class="text-center">Reset Password</.header>

      <.simple_form
        for={@form}
        id="reset_password_form"
        phx-submit="reset_password"
        phx-change="validate"
      >
        <.error :if={@form.errors != []}>
          Oops, something went wrong! Please check the errors below.
        </.error>

        <.input field={@form[:password]} type="password" label="New password" required />
        <.input
          field={@form[:password_confirmation]}
          type="password"
          label="Confirm new password"
          required
        />
        <:actions>
          <.button phx-disable-with="Resetting..." class="w-full">Reset Password</.button>
        </:actions>
      </.simple_form>

      <p class="text-center text-sm mt-4">
        <.link href={~p"/users/register"}>Register</.link>
        | <.link href={~p"/users/sign-in"}>Sign in</.link>
      </p>
    </div>
    """
  end

  def mount(params, _session, socket) do
    socket =
      socket
      |> assign(:domain, :user)
      |> assign_user_and_token(params)

    form_source =
      case socket.assigns do
        %{user: user} ->
          Users.change_user_password(user)

        _ ->
          %{}
      end

    {:ok, assign_form(socket, form_source), temporary_assigns: [form: nil]}
  end

  # Do not log in the user after reset password to avoid a
  # leaked token giving the user access to the account.
  def handle_event("reset_password", %{"user" => user_params}, socket) do
    case Users.reset_user_password(socket.assigns.user, user_params) do
      {:ok, _} ->
        {:noreply,
         socket
         |> put_flash(:info, "Password reset successfully.")
         |> redirect(to: ~p"/users/sign-in")}

      {:error, changeset} ->
        {:noreply, assign_form(socket, Map.put(changeset, :action, :insert))}
    end
  end

  def handle_event("validate", %{"user" => user_params}, socket) do
    changeset = Users.change_user_password(socket.assigns.user, user_params)
    {:noreply, assign_form(socket, Map.put(changeset, :action, :validate))}
  end

  defp assign_user_and_token(socket, %{"token" => token}) do
    if user = Users.get_user_by_reset_password_token(token) do
      assign(socket, user: user, token: token)
    else
      socket
      |> put_flash(:error, "Reset password link is invalid or it has expired.")
      |> redirect(to: ~p"/")
    end
  end

  defp assign_form(socket, %{} = source) do
    assign(socket, :form, to_form(source, as: "user"))
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_settings_live.ex
```ex
defmodule LaxWeb.UserSettingsLive do
  use LaxWeb, {:live_view, layout: :chat}
  use LaxNative, :live_view

  alias Lax.Users

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-lg py-16">
      <.header class="text-center">
        Account Settings
        <:subtitle>Manage your account email address and password settings</:subtitle>
      </.header>

      <div class="space-y-12 divide-y divide-zinc-700">
        <div>
          <.simple_form
            for={@email_form}
            id="email_form"
            phx-submit="update_email"
            phx-change="validate_email"
          >
            <.input field={@email_form[:email]} type="email" label="Email" required />
            <.input
              field={@email_form[:current_password]}
              name="current_password"
              id="current_password_for_email"
              type="password"
              label="Current password"
              value={@email_form_current_password}
              required
            />
            <:actions>
              <.button phx-disable-with="Changing...">Change Email</.button>
            </:actions>
          </.simple_form>
        </div>
        <div>
          <.simple_form
            for={@password_form}
            id="password_form"
            action={~p"/users/sign-in?_action=password_updated"}
            method="post"
            phx-change="validate_password"
            phx-submit="update_password"
            phx-trigger-action={@trigger_submit}
          >
            <input
              name={@password_form[:email].name}
              type="hidden"
              id="hidden_user_email"
              value={@current_email}
            />
            <.input field={@password_form[:password]} type="password" label="New password" required />
            <.input
              field={@password_form[:password_confirmation]}
              type="password"
              label="Confirm new password"
            />
            <.input
              field={@password_form[:current_password]}
              name="current_password"
              type="password"
              label="Current password"
              id="current_password_for_password"
              value={@current_password}
              required
            />
            <:actions>
              <.button phx-disable-with="Changing...">Change Password</.button>
            </:actions>
          </.simple_form>
        </div>
      </div>
    </div>
    """
  end

  def mount(%{"token" => token}, _session, socket) do
    socket =
      case Users.update_user_email(socket.assigns.current_user, token) do
        :ok ->
          put_flash(socket, :info, "Email changed successfully.")

        :error ->
          put_flash(socket, :error, "Email change link is invalid or it has expired.")
      end

    {:ok, push_navigate(socket, to: ~p"/users/settings")}
  end

  def mount(_params, _session, socket) do
    user = socket.assigns.current_user
    email_changeset = Users.change_user_email(user)
    password_changeset = Users.change_user_password(user)

    socket =
      socket
      |> assign(:domain, :user)
      |> assign(:current_password, nil)
      |> assign(:email_form_current_password, nil)
      |> assign(:current_email, user.email)
      |> assign(:email_form, to_form(email_changeset))
      |> assign(:password_form, to_form(password_changeset))
      |> assign(:trigger_submit, false)

    {:ok, socket}
  end

  def handle_event("validate_email", params, socket) do
    %{"current_password" => password, "user" => user_params} = params

    email_form =
      socket.assigns.current_user
      |> Users.change_user_email(user_params)
      |> Map.put(:action, :validate)
      |> to_form()

    {:noreply, assign(socket, email_form: email_form, email_form_current_password: password)}
  end

  def handle_event("update_email", params, socket) do
    %{"current_password" => password, "user" => user_params} = params
    user = socket.assigns.current_user

    case Users.apply_user_email(user, password, user_params) do
      {:ok, applied_user} ->
        Users.deliver_user_update_email_instructions(
          applied_user,
          user.email,
          &url(~p"/users/settings/confirm-email/#{&1}")
        )

        info = "A link to confirm your email change has been sent to the new address."
        {:noreply, socket |> put_flash(:info, info) |> assign(email_form_current_password: nil)}

      {:error, changeset} ->
        {:noreply, assign(socket, :email_form, to_form(Map.put(changeset, :action, :insert)))}
    end
  end

  def handle_event("validate_password", params, socket) do
    %{"current_password" => password, "user" => user_params} = params

    password_form =
      socket.assigns.current_user
      |> Users.change_user_password(user_params)
      |> Map.put(:action, :validate)
      |> to_form()

    {:noreply, assign(socket, password_form: password_form, current_password: password)}
  end

  def handle_event("update_password", params, socket) do
    %{"current_password" => password, "user" => user_params} = params
    user = socket.assigns.current_user

    case Users.update_user_password(user, password, user_params) do
      {:ok, user} ->
        password_form =
          user
          |> Users.change_user_password(user_params)
          |> to_form()

        {:noreply, assign(socket, trigger_submit: true, password_form: password_form)}

      {:error, changeset} ->
        {:noreply, assign(socket, password_form: to_form(changeset))}
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/live/user_settings_live.swiftui.ex
```ex
defmodule LaxWeb.UserSettingsLive.SwiftUI do
  use LaxNative, [:render_component, format: :swiftui]

  def render(assigns) do
    ~LVN"""
    <.header>
      Account Settings
      <:subtitle>Manage your account email address and password settings</:subtitle>
    </.header>

    <Form>
      <.form
        for={@email_form}
        id="email_form"
        phx-submit="update_email"
        phx-change="validate_email"
      >
        <Section>
          <Text template="header">Change Email</Text>
          <.input field={@email_form[:email]} type="TextField" label="Email" />
          <.input
            field={@email_form[:current_password]}
            name="current_password"
            id="current_password_for_email"
            type="SecureField"
            label="Current password"
            value={@email_form_current_password}
          />
        </Section>
        <Section>
          <.button type="submit">Change Email</.button>
        </Section>
      </.form>

      <Divider class="list-row-background-:empty" />

      <.form
        for={@password_form}
        id="password_form"
        action={~p"/users/sign-in?_action=password_updated"}
        method="post"
        phx-change="validate_password"
        phx-submit="update_password"
        phx-trigger-action={@trigger_submit}
      >
        <Section>
          <Text template="header">Change Password</Text>
          <.input
            field={@password_form[:email]}
            type="hidden"
            id="hidden_user_email"
            value={@current_email}
            readonly
          />
          <.input field={@password_form[:password]} type="SecureField" label="New password" />
          <.input
            field={@password_form[:password_confirmation]}
            type="SecureField"
            label="Confirm new password"
          />
          <.input
            field={@password_form[:current_password]}
            name="current_password"
            type="SecureField"
            label="Current password"
            id="current_password_for_password"
            value={@current_password}
          />
        </Section>

        <Section>
          <.button type="submit">Change Password</.button>
        </Section>
      </.form>
    </Form>
    """
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/styles/app.swiftui.ex
```ex
defmodule LaxWeb.Styles.App.SwiftUI do
  use LiveViewNative.Stylesheet, :swiftui
  # Read more about UtilityStyles if you want to use them
  @import LiveViewNative.SwiftUI.UtilityStyles

  # Add your styles here
  # Refer to your client's documentation on what the proper syntax
  # is for defining rules within classes
  ~SHEET"""
  """

  # If you need to have greater control over how your style rules are created
  # you can use the function defintion style which is more verbose but allows
  # for more fine-grained controled
  #
  # This example shows what is not possible within the more concise ~SHEET
  # use `<Text class="frame:w100:h200" />` allows for a setting
  # of both the `width` and `height` values.

  # def class("frame:" <> dims) do
  #   [width] = Regex.run(~r/w(\d+)/, dims, capture: :all_but_first)
  #   [height] = Regex.run(~r/h(\d+)/, dims, capture: :all_but_first)

  #   ~RULES"""
  #   frame(width: {width}, height: {height})
  #   """
  # end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/endpoint.ex
```ex
defmodule LaxWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :lax

  # The session will be stored in the cookie and signed,
  # this means its contents can be read but not tampered with.
  # Set :encryption_salt if you would also like to encrypt it.
  @session_options [
    store: :cookie,
    key: "_lax_key",
    signing_salt: "vpemFZ12",
    same_site: "Lax"
  ]

  socket "/live", Phoenix.LiveView.Socket,
    websocket: [connect_info: [session: @session_options]],
    longpoll: [connect_info: [session: @session_options]]

  # Serve at "/" the static files from "priv/static" directory.
  #
  # You should set gzip to true if you are running phx.digest
  # when deploying your static files in production.
  plug Plug.Static,
    at: "/",
    from: :lax,
    gzip: false,
    only: LaxWeb.static_paths()

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket
    plug Phoenix.LiveReloader
    plug LiveViewNative.LiveReloader
    plug Phoenix.CodeReloader
    plug Phoenix.Ecto.CheckRepoStatus, otp_app: :lax
  end

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Plug.MethodOverride
  plug Plug.Head
  plug Plug.Session, @session_options
  plug LaxWeb.Router
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/gettext.ex
```ex
defmodule LaxWeb.Gettext do
  @moduledoc """
  A module providing Internationalization with a gettext-based API.

  By using [Gettext](https://hexdocs.pm/gettext),
  your module gains a set of macros for translations, for example:

      import LaxWeb.Gettext

      # Simple translation
      gettext("Here is the string to translate")

      # Plural translation
      ngettext("Here is the string to translate",
               "Here are the strings to translate",
               3)

      # Domain-based translation
      dgettext("errors", "Here is the error message to translate")

  See the [Gettext Docs](https://hexdocs.pm/gettext) for detailed usage.
  """
  use Gettext, otp_app: :lax
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/presence.ex
```ex
defmodule LaxWeb.Presence do
  use Phoenix.Presence,
    otp_app: :lax,
    pubsub_server: Lax.PubSub

  defmodule Live do
    import Phoenix.Component
    import Phoenix.LiveView

    @presence "online_users"

    def track_online_users(socket) do
      if connected?(socket) do
        if user = socket.assigns.current_user do
          {:ok, _} =
            LaxWeb.Presence.track(self(), @presence, user.id, %{
              online_at: inspect(System.system_time(:second))
            })
        end

        Phoenix.PubSub.subscribe(Lax.PubSub, @presence)
      end

      socket
      |> assign(:tracked_users, %{})
      |> handle_joins(LaxWeb.Presence.list(@presence))
      |> attach_hook(:presence_tracking, :handle_info, &handle_info/2)
    end

    def online?(assigns, user) do
      Map.has_key?(Map.get(assigns, :tracked_users, %{}), user.id)
    end

    def handle_info(%Phoenix.Socket.Broadcast{event: "presence_diff", payload: diff}, socket) do
      {:halt,
       socket
       |> handle_leaves(diff.leaves)
       |> handle_joins(diff.joins)}
    end

    def handle_info(_info, socket), do: {:cont, socket}

    defp handle_joins(socket, joins) do
      Enum.reduce(joins, socket, fn {user, %{metas: [meta | _]}}, socket ->
        update(socket, :tracked_users, &Map.put(&1, user, meta))
      end)
    end

    defp handle_leaves(socket, leaves) do
      Enum.reduce(leaves, socket, fn {user, _}, socket ->
        update(socket, :tracked_users, &Map.delete(&1, user))
      end)
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/router.ex
```ex
defmodule LaxWeb.Router do
  use LaxWeb, :router

  import LaxWeb.UserAuth

  pipeline :browser do
    plug :accepts, ["html", "swiftui"]
    plug :fetch_session
    plug :fetch_live_flash

    plug :put_root_layout,
      html: {LaxWeb.Layouts, :root},
      swiftui: {LaxWeb.Layouts.SwiftUI, :root}

    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :fetch_current_user
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LaxWeb do
    get "/health", HealthController, :health
  end

  # Enable Swoosh mailbox preview in development
  if Application.compile_env(:lax, :dev_routes) do
    scope "/dev" do
      pipe_through :browser

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end

  ## Authentication routes

  scope "/", LaxWeb do
    pipe_through [:browser, :redirect_if_user_is_authenticated]

    live_session :redirect_if_user_is_authenticated,
      on_mount: [{LaxWeb.UserAuth, :redirect_if_user_is_authenticated}] do
      live "/users/register", UserRegistrationLive, :new
      live "/users/sign-in", UserLoginLive, :new
      live "/users/reset-password", UserForgotPasswordLive, :new
      live "/users/reset-password/:token", UserResetPasswordLive, :edit
    end

    post "/users/sign-in", UserSessionController, :create
  end

  scope "/", LaxWeb do
    pipe_through [:browser, :require_authenticated_user]

    live_session :require_authenticated_user,
      on_mount: [{LaxWeb.UserAuth, :ensure_authenticated}] do
      live "/users/settings", UserSettingsLive, :edit
      live "/users/settings/confirm-email/:token", UserSettingsLive, :confirm_email
    end
  end

  scope "/", LaxWeb do
    pipe_through [:browser]

    get "/support", PageController, :support

    get "/users/sign-out", UserSessionController, :delete
    delete "/users/sign-out", UserSessionController, :delete

    live_session :current_user,
      on_mount: [{LaxWeb.UserAuth, :mount_current_user}] do
      live "/", ChatLive, :chat
      live "/chat/:id", ChatLive, :chat_selected
      live "/direct-messages", DirectMessageLive, :new
      live "/direct-messages/:id", DirectMessageLive, :show
      live "/new-direct-message", DirectMessageLive.NewDirectMessageLive, :new
      live "/users/confirm/:token", UserConfirmationLive, :edit
      live "/users/confirm", UserConfirmationInstructionsLive, :new
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/telemetry.ex
```ex
defmodule LaxWeb.Telemetry do
  use Supervisor
  import Telemetry.Metrics

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg, name: __MODULE__)
  end

  @impl true
  def init(_arg) do
    children = [
      # Telemetry poller will execute the given period measurements
      # every 10_000ms. Learn more here: https://hexdocs.pm/telemetry_metrics
      {:telemetry_poller, measurements: periodic_measurements(), period: 10_000}
      # Add reporters as children of your supervision tree.
      # {Telemetry.Metrics.ConsoleReporter, metrics: metrics()}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end

  def metrics do
    [
      # Phoenix Metrics
      summary("phoenix.endpoint.start.system_time",
        unit: {:native, :millisecond}
      ),
      summary("phoenix.endpoint.stop.duration",
        unit: {:native, :millisecond}
      ),
      summary("phoenix.router_dispatch.start.system_time",
        tags: [:route],
        unit: {:native, :millisecond}
      ),
      summary("phoenix.router_dispatch.exception.duration",
        tags: [:route],
        unit: {:native, :millisecond}
      ),
      summary("phoenix.router_dispatch.stop.duration",
        tags: [:route],
        unit: {:native, :millisecond}
      ),
      summary("phoenix.socket_connected.duration",
        unit: {:native, :millisecond}
      ),
      summary("phoenix.channel_joined.duration",
        unit: {:native, :millisecond}
      ),
      summary("phoenix.channel_handled_in.duration",
        tags: [:event],
        unit: {:native, :millisecond}
      ),

      # Database Metrics
      summary("lax.repo.query.total_time",
        unit: {:native, :millisecond},
        description: "The sum of the other measurements"
      ),
      summary("lax.repo.query.decode_time",
        unit: {:native, :millisecond},
        description: "The time spent decoding the data received from the database"
      ),
      summary("lax.repo.query.query_time",
        unit: {:native, :millisecond},
        description: "The time spent executing the query"
      ),
      summary("lax.repo.query.queue_time",
        unit: {:native, :millisecond},
        description: "The time spent waiting for a database connection"
      ),
      summary("lax.repo.query.idle_time",
        unit: {:native, :millisecond},
        description:
          "The time the connection spent waiting before being checked out for the query"
      ),

      # VM Metrics
      summary("vm.memory.total", unit: {:byte, :kilobyte}),
      summary("vm.total_run_queue_lengths.total"),
      summary("vm.total_run_queue_lengths.cpu"),
      summary("vm.total_run_queue_lengths.io")
    ]
  end

  defp periodic_measurements do
    [
      # A module, function and arguments to be invoked periodically.
      # This function must call :telemetry.execute/3 and a metric must be added above.
      # {LaxWeb, :count_users, []}
    ]
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web/user_auth.ex
```ex
defmodule LaxWeb.UserAuth do
  use LaxWeb, :verified_routes

  import Plug.Conn
  import Phoenix.Controller

  alias Lax.Users

  # Make the remember me cookie valid for 60 days.
  # If you want bump or reduce this value, also change
  # the token expiry itself in UserToken.
  @max_age 60 * 60 * 24 * 60
  @remember_me_cookie "_lax_web_user_remember_me"
  @remember_me_options [sign: true, max_age: @max_age, same_site: "Lax"]

  @doc """
  Logs the user in.

  It renews the session ID and clears the whole session
  to avoid fixation attacks. See the renew_session
  function to customize this behaviour.

  It also sets a `:live_socket_id` key in the session,
  so LiveView sessions are identified and automatically
  disconnected on log out. The line can be safely removed
  if you are not using LiveView.
  """
  def log_in_user(conn, user, params \\ %{}) do
    token = Users.generate_user_session_token(user)
    user_return_to = get_session(conn, :user_return_to)

    conn
    |> renew_session()
    |> put_token_in_session(token)
    |> maybe_write_remember_me_cookie(token, params)
    |> redirect(to: user_return_to || signed_in_path(conn))
  end

  defp maybe_write_remember_me_cookie(conn, token, %{"remember_me" => "true"}) do
    put_resp_cookie(conn, @remember_me_cookie, token, @remember_me_options)
  end

  defp maybe_write_remember_me_cookie(conn, _token, _params) do
    conn
  end

  # This function renews the session ID and erases the whole
  # session to avoid fixation attacks. If there is any data
  # in the session you may want to preserve after log in/log out,
  # you must explicitly fetch the session data before clearing
  # and then immediately set it after clearing, for example:
  #
  #     defp renew_session(conn) do
  #       preferred_locale = get_session(conn, :preferred_locale)
  #
  #       conn
  #       |> configure_session(renew: true)
  #       |> clear_session()
  #       |> put_session(:preferred_locale, preferred_locale)
  #     end
  #
  defp renew_session(conn) do
    delete_csrf_token()

    conn
    |> configure_session(renew: true)
    |> clear_session()
  end

  @doc """
  Logs the user out.

  It clears all session data for safety. See renew_session.
  """
  def log_out_user(conn) do
    user_token = get_session(conn, :user_token)

    user = user_token && Users.get_user_by_session_token(user_token)
    Users.update_user_apns_device_token(user, [])

    user_token && Users.delete_user_session_token(user_token)

    if live_socket_id = get_session(conn, :live_socket_id) do
      LaxWeb.Endpoint.broadcast(live_socket_id, "disconnect", %{})
    end

    conn
    |> renew_session()
    |> delete_resp_cookie(@remember_me_cookie)
    |> redirect(to: ~p"/")
  end

  @doc """
  Authenticates the user by looking into the session
  and remember me token.
  """
  def fetch_current_user(conn, _opts) do
    {user_token, conn} = ensure_user_token(conn)
    user = user_token && Users.get_user_by_session_token(user_token)
    assign(conn, :current_user, user)
  end

  defp ensure_user_token(conn) do
    if token = get_session(conn, :user_token) do
      {token, conn}
    else
      conn = fetch_cookies(conn, signed: [@remember_me_cookie])

      if token = conn.cookies[@remember_me_cookie] do
        {token, put_token_in_session(conn, token)}
      else
        {nil, conn}
      end
    end
  end

  @doc """
  Handles mounting and authenticating the current_user in LiveViews.

  ## `on_mount` arguments

    * `:mount_current_user` - Assigns current_user
      to socket assigns based on user_token, or nil if
      there's no user_token or no matching user.

    * `:ensure_authenticated` - Authenticates the user from the session,
      and assigns the current_user to socket assigns based
      on user_token.
      Redirects to login page if there's no logged user.

    * `:redirect_if_user_is_authenticated` - Authenticates the user from the session.
      Redirects to signed_in_path if there's a logged user.

  ## Examples

  Use the `on_mount` lifecycle macro in LiveViews to mount or authenticate
  the current_user:

      defmodule LaxWeb.PageLive do
        use LaxWeb, :live_view

        on_mount {LaxWeb.UserAuth, :mount_current_user}
        ...
      end

  Or use the `live_session` of your router to invoke the on_mount callback:

      live_session :authenticated, on_mount: [{LaxWeb.UserAuth, :ensure_authenticated}] do
        live "/profile", ProfileLive, :index
      end
  """
  def on_mount(:mount_current_user, _params, session, socket) do
    {:cont, mount_current_user(socket, session)}
  end

  def on_mount(:ensure_authenticated, _params, session, socket) do
    socket = mount_current_user(socket, session)

    if socket.assigns.current_user do
      {:cont, socket}
    else
      socket =
        socket
        |> Phoenix.LiveView.put_flash(:error, "You must log in to access this page.")
        |> Phoenix.LiveView.redirect(to: ~p"/users/sign-in")

      {:halt, socket}
    end
  end

  def on_mount(:redirect_if_user_is_authenticated, _params, session, socket) do
    socket = mount_current_user(socket, session)

    if socket.assigns.current_user do
      {:halt, Phoenix.LiveView.redirect(socket, to: signed_in_path(socket))}
    else
      {:cont, socket}
    end
  end

  defp mount_current_user(socket, session) do
    Phoenix.Component.assign_new(socket, :current_user, fn ->
      if user_token = session["user_token"] do
        Users.get_user_by_session_token(user_token)
      end
    end)
  end

  @doc """
  Used for routes that require the user to not be authenticated.
  """
  def redirect_if_user_is_authenticated(conn, _opts) do
    if conn.assigns[:current_user] do
      conn
      |> redirect(to: signed_in_path(conn))
      |> halt()
    else
      conn
    end
  end

  @doc """
  Used for routes that require the user to be authenticated.

  If you want to enforce the user email is confirmed before
  they use the application at all, here would be a good place.
  """
  def require_authenticated_user(conn, _opts) do
    if conn.assigns[:current_user] do
      conn
    else
      conn
      |> put_flash(:error, "You must log in to access this page.")
      |> maybe_store_return_to()
      |> redirect(to: ~p"/users/sign-in")
      |> halt()
    end
  end

  defp put_token_in_session(conn, token) do
    conn
    |> put_session(:user_token, token)
    |> put_session(:live_socket_id, "users_sessions:#{Base.url_encode64(token)}")
  end

  defp maybe_store_return_to(%{method: "GET"} = conn) do
    put_session(conn, :user_return_to, current_path(conn))
  end

  defp maybe_store_return_to(conn), do: conn

  defp signed_in_path(_conn), do: ~p"/"
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_native.ex
```ex
defmodule LaxNative do
  @moduledoc """
  The entrypoint for defining your native interfaces, such
  as components, render components, layouts, and live views.

  This can be used in your application as:

      use LaxNative, :live_view

  The definitions below will be executed for every
  component, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below. Instead, define additional modules and import
  those modules here.
  """

  import LaxWeb, only: [verified_routes: 0]

  @doc ~S'''
  Set up an existing LiveView module for use with LiveView Native

      defmodule MyAppWeb.HomeLive do
        use MyAppWeb, :live_view
        use MyAppNative, :live_view
      end

  An `on_mount` callback will be injected that will negotiate
  the inbound connection content type. If it is a LiveView Native
  type the `render/1` will be delegated to the format-specific
  render component.
  '''
  def live_view() do
    quote do
      use LiveViewNative.LiveView,
        formats: [
          :swiftui
        ],
        layouts: [
          swiftui: {LaxWeb.Layouts.SwiftUI, :app}
        ]

      unquote(verified_routes())
    end
  end

  @doc ~S'''
  Set up a module as a LiveView Native format-specific render component

      defmodule MyAppWeb.HomeLive.SwiftUI do
        use MyAppNative, [:render_component, format: :swiftui]

        def render(assigns, _interface) do
          ~LVN"""
          <Text>Hello, world!</Text>
          """
        end
      end
  '''
  def render_component(opts) do
    opts =
      opts
      |> Keyword.take([:format])
      |> Keyword.put(:as, :render)

    quote do
      use LiveViewNative.Component, unquote(opts)

      unquote(helpers(opts[:format]))
    end
  end

  @doc ~S'''
  Set up a module as a LiveView Native Component

      defmodule MyAppWeb.Components.CustomSwiftUI do
        use MyAppNative, [:component, format: :swiftui]

        attr :msg, :string, :required
        def home_textk(assigns) do
          ~LVN"""
          <Text>@msg</Text>
          """
        end
      end

  LiveView Native Components are identical to Phoenix Components. Please
  refer to the `Phoenix.Component` documentation for more information.
  '''
  def component(opts) do
    opts = Keyword.take(opts, [:format, :root, :as])

    quote do
      use LiveViewNative.Component, unquote(opts)

      unquote(helpers(opts[:format]))
    end
  end

  @doc ~S'''
  Set up a module as a LiveView Natve Layout Component

      defmodule MyAppWeb.Layouts.SwiftUI do
        use MyAppNative, [:layout, format: :swiftui]

        embed_tempaltes "layouts_swiftui/*"
      end
  '''
  def layout(opts) do
    opts = Keyword.take(opts, [:format, :root])

    quote do
      use LiveViewNative.Component, unquote(opts)

      import LiveViewNative.Component, only: [csrf_token: 1]

      unquote(helpers(opts[:format]))
    end
  end

  defp helpers(format) do
    gettext_quoted =
      quote do
        import LaxWeb.Gettext
      end

    plugin = LiveViewNative.fetch_plugin!(format)

    plugin_component_quoted =
      try do
        Code.ensure_compiled!(plugin.component)

        quote do
          import unquote(plugin.component)
        end
      rescue
        _ -> nil
      end

    live_form_quoted =
      quote do
        import LiveViewNative.LiveForm.Component
      end

    core_component_module = Module.concat([LaxWeb, CoreComponents, plugin.module_suffix])

    core_component_quoted =
      try do
        Code.ensure_compiled!(core_component_module)

        quote do
          import unquote(core_component_module)
        end
      rescue
        _ -> nil
      end

    [
      gettext_quoted,
      plugin_component_quoted,
      live_form_quoted,
      core_component_quoted,
      verified_routes()
    ]
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__([which | opts]) when is_atom(which) do
    apply(__MODULE__, which, [opts])
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax_web.ex
```ex
defmodule LaxWeb do
  @moduledoc """
  The entrypoint for defining your web interface, such
  as controllers, components, channels, and so on.

  This can be used in your application as:

      use LaxWeb, :controller
      use LaxWeb, :html

  The definitions below will be executed for every controller,
  component, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below. Instead, define additional modules and import
  those modules here.
  """

  def static_paths, do: ~w(assets fonts images favicon.ico robots.txt)

  def router do
    quote do
      use Phoenix.Router, helpers: false

      # Import common connection and controller functions to use in pipelines
      import Plug.Conn
      import Phoenix.Controller
      import Phoenix.LiveView.Router
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
    end
  end

  def controller do
    quote do
      use Phoenix.Controller,
        formats: [:html, :json],
        layouts: [html: LaxWeb.Layouts]

      import Plug.Conn
      import LaxWeb.Gettext

      unquote(verified_routes())
    end
  end

  def live_view(opts \\ []) do
    layout = Keyword.get(opts, :layout, :app)

    quote do
      use Phoenix.LiveView,
        layout: {LaxWeb.Layouts, unquote(layout)}

      unquote(html_helpers())
    end
  end

  def live_component do
    quote do
      use Phoenix.LiveComponent

      unquote(html_helpers())
    end
  end

  def html do
    quote do
      use Phoenix.Component

      # Import convenience functions from controllers
      import Phoenix.Controller,
        only: [get_csrf_token: 0, view_module: 1, view_template: 1]

      # Include general helpers for rendering HTML
      unquote(html_helpers())
    end
  end

  defp html_helpers do
    quote do
      # HTML escaping functionality
      import Phoenix.HTML
      # Core UI components and translation
      import LaxWeb.CoreComponents
      import LaxWeb.Gettext

      # Shortcut for generating JS commands
      alias Phoenix.LiveView.JS

      # Routes generation with the ~p sigil
      unquote(verified_routes())
    end
  end

  def verified_routes do
    quote do
      use Phoenix.VerifiedRoutes,
        endpoint: LaxWeb.Endpoint,
        router: LaxWeb.Router,
        statics: LaxWeb.static_paths()
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/live_view/etc.
  """
  defmacro __using__({which, opts}) when is_atom(which) do
    apply(__MODULE__, which, [opts])
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/lib/lax.ex
```ex
defmodule Lax do
  @moduledoc """
  Lax keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax/users_test.exs
```exs
defmodule Lax.UsersTest do
  use Lax.DataCase

  alias Lax.Users

  import Lax.UsersFixtures
  alias Lax.Users.{User, UserToken}

  describe "get_user_by_email/1" do
    test "does not return the user if the email does not exist" do
      refute Users.get_user_by_email("unknown@example.com")
    end

    test "returns the user if the email exists" do
      %{id: id} = user = user_fixture()
      assert %User{id: ^id} = Users.get_user_by_email(user.email)
    end
  end

  describe "get_user_by_email_and_password/2" do
    test "does not return the user if the email does not exist" do
      refute Users.get_user_by_email_and_password("unknown@example.com", "hello world!")
    end

    test "does not return the user if the password is not valid" do
      user = user_fixture()
      refute Users.get_user_by_email_and_password(user.email, "invalid")
    end

    test "returns the user if the email and password are valid" do
      %{id: id} = user = user_fixture()

      assert %User{id: ^id} =
               Users.get_user_by_email_and_password(user.email, valid_user_password())
    end
  end

  describe "get_user!/1" do
    test "raises if id is invalid" do
      assert_raise Ecto.NoResultsError, fn ->
        Users.get_user!("11111111-1111-1111-1111-111111111111")
      end
    end

    test "returns the user with the given id" do
      %{id: id} = user = user_fixture()
      assert %User{id: ^id} = Users.get_user!(user.id)
    end
  end

  describe "register_user/1" do
    test "requires email and password to be set" do
      {:error, changeset} = Users.register_user(%{})

      assert %{
               password: ["can't be blank"],
               email: ["can't be blank"]
             } = errors_on(changeset)
    end

    test "validates email and password when given" do
      {:error, changeset} = Users.register_user(%{email: "not valid", password: "short"})

      assert %{
               email: ["must have the @ sign and no spaces"],
               password: ["should be at least 8 character(s)"]
             } = errors_on(changeset)
    end

    test "validates maximum values for email and password for security" do
      too_long = String.duplicate("db", 100)
      {:error, changeset} = Users.register_user(%{email: too_long, password: too_long})
      assert "should be at most 160 character(s)" in errors_on(changeset).email
      assert "should be at most 72 character(s)" in errors_on(changeset).password
    end

    test "validates email uniqueness" do
      %{email: email} = user_fixture()
      {:error, changeset} = Users.register_user(%{email: email})
      assert "has already been taken" in errors_on(changeset).email

      # Now try with the upper cased email too, to check that email case is ignored.
      {:error, changeset} = Users.register_user(%{email: String.upcase(email)})
      assert "has already been taken" in errors_on(changeset).email
    end

    test "registers users with a hashed password" do
      email = unique_user_email()
      {:ok, user} = Users.register_user(valid_user_attributes(email: email))
      assert user.email == email
      assert is_binary(user.hashed_password)
      assert is_nil(user.confirmed_at)
      assert is_nil(user.password)
    end
  end

  describe "change_user_registration/2" do
    test "returns a changeset" do
      assert %Ecto.Changeset{} = changeset = Users.change_user_registration(%User{})
      assert changeset.required == [:time_zone, :password, :username, :email]
    end

    test "allows fields to be set" do
      email = unique_user_email()
      password = valid_user_password()

      changeset =
        Users.change_user_registration(
          %User{},
          valid_user_attributes(email: email, password: password)
        )

      assert changeset.valid?
      assert get_change(changeset, :email) == email
      assert get_change(changeset, :password) == password
      assert is_nil(get_change(changeset, :hashed_password))
    end
  end

  describe "change_user_email/2" do
    test "returns a user changeset" do
      assert %Ecto.Changeset{} = changeset = Users.change_user_email(%User{})
      assert changeset.required == [:email]
    end
  end

  describe "apply_user_email/3" do
    setup do
      %{user: user_fixture()}
    end

    test "requires email to change", %{user: user} do
      {:error, changeset} = Users.apply_user_email(user, valid_user_password(), %{})
      assert %{email: ["did not change"]} = errors_on(changeset)
    end

    test "validates email", %{user: user} do
      {:error, changeset} =
        Users.apply_user_email(user, valid_user_password(), %{email: "not valid"})

      assert %{email: ["must have the @ sign and no spaces"]} = errors_on(changeset)
    end

    test "validates maximum value for email for security", %{user: user} do
      too_long = String.duplicate("db", 100)

      {:error, changeset} =
        Users.apply_user_email(user, valid_user_password(), %{email: too_long})

      assert "should be at most 160 character(s)" in errors_on(changeset).email
    end

    test "validates email uniqueness", %{user: user} do
      %{email: email} = user_fixture()
      password = valid_user_password()

      {:error, changeset} = Users.apply_user_email(user, password, %{email: email})

      assert "has already been taken" in errors_on(changeset).email
    end

    test "validates current password", %{user: user} do
      {:error, changeset} =
        Users.apply_user_email(user, "invalid", %{email: unique_user_email()})

      assert %{current_password: ["is not valid"]} = errors_on(changeset)
    end

    test "applies the email without persisting it", %{user: user} do
      email = unique_user_email()
      {:ok, user} = Users.apply_user_email(user, valid_user_password(), %{email: email})
      assert user.email == email
      assert Users.get_user!(user.id).email != email
    end
  end

  describe "deliver_user_update_email_instructions/3" do
    setup do
      %{user: user_fixture()}
    end

    test "sends token through notification", %{user: user} do
      token =
        extract_user_token(fn url ->
          Users.deliver_user_update_email_instructions(user, "current@example.com", url)
        end)

      {:ok, token} = Base.url_decode64(token, padding: false)
      assert user_token = Repo.get_by(UserToken, token: :crypto.hash(:sha256, token))
      assert user_token.user_id == user.id
      assert user_token.sent_to == user.email
      assert user_token.context == "change:current@example.com"
    end
  end

  describe "update_user_email/2" do
    setup do
      user = user_fixture()
      email = unique_user_email()

      token =
        extract_user_token(fn url ->
          Users.deliver_user_update_email_instructions(%{user | email: email}, user.email, url)
        end)

      %{user: user, token: token, email: email}
    end

    test "updates the email with a valid token", %{user: user, token: token, email: email} do
      assert Users.update_user_email(user, token) == :ok
      changed_user = Repo.get!(User, user.id)
      assert changed_user.email != user.email
      assert changed_user.email == email
      assert changed_user.confirmed_at
      assert changed_user.confirmed_at != user.confirmed_at
      refute Repo.get_by(UserToken, user_id: user.id)
    end

    test "does not update email with invalid token", %{user: user} do
      assert Users.update_user_email(user, "oops") == :error
      assert Repo.get!(User, user.id).email == user.email
      assert Repo.get_by(UserToken, user_id: user.id)
    end

    test "does not update email if user email changed", %{user: user, token: token} do
      assert Users.update_user_email(%{user | email: "current@example.com"}, token) == :error
      assert Repo.get!(User, user.id).email == user.email
      assert Repo.get_by(UserToken, user_id: user.id)
    end

    test "does not update email if token expired", %{user: user, token: token} do
      {1, nil} = Repo.update_all(UserToken, set: [inserted_at: ~N[2020-01-01 00:00:00]])
      assert Users.update_user_email(user, token) == :error
      assert Repo.get!(User, user.id).email == user.email
      assert Repo.get_by(UserToken, user_id: user.id)
    end
  end

  describe "change_user_password/2" do
    test "returns a user changeset" do
      assert %Ecto.Changeset{} = changeset = Users.change_user_password(%User{})
      assert changeset.required == [:password]
    end

    test "allows fields to be set" do
      changeset =
        Users.change_user_password(%User{}, %{
          "password" => "new valid password"
        })

      assert changeset.valid?
      assert get_change(changeset, :password) == "new valid password"
      assert is_nil(get_change(changeset, :hashed_password))
    end
  end

  describe "update_user_password/3" do
    setup do
      %{user: user_fixture()}
    end

    test "validates password", %{user: user} do
      {:error, changeset} =
        Users.update_user_password(user, valid_user_password(), %{
          password: "short",
          password_confirmation: "another"
        })

      assert %{
               password: ["should be at least 8 character(s)"],
               password_confirmation: ["does not match password"]
             } = errors_on(changeset)
    end

    test "validates maximum values for password for security", %{user: user} do
      too_long = String.duplicate("db", 100)

      {:error, changeset} =
        Users.update_user_password(user, valid_user_password(), %{password: too_long})

      assert "should be at most 72 character(s)" in errors_on(changeset).password
    end

    test "validates current password", %{user: user} do
      {:error, changeset} =
        Users.update_user_password(user, "invalid", %{password: valid_user_password()})

      assert %{current_password: ["is not valid"]} = errors_on(changeset)
    end

    test "updates the password", %{user: user} do
      {:ok, user} =
        Users.update_user_password(user, valid_user_password(), %{
          password: "new valid password"
        })

      assert is_nil(user.password)
      assert Users.get_user_by_email_and_password(user.email, "new valid password")
    end

    test "deletes all tokens for the given user", %{user: user} do
      _ = Users.generate_user_session_token(user)

      {:ok, _} =
        Users.update_user_password(user, valid_user_password(), %{
          password: "new valid password"
        })

      refute Repo.get_by(UserToken, user_id: user.id)
    end
  end

  describe "generate_user_session_token/1" do
    setup do
      %{user: user_fixture()}
    end

    test "generates a token", %{user: user} do
      token = Users.generate_user_session_token(user)
      assert user_token = Repo.get_by(UserToken, token: token)
      assert user_token.context == "session"

      # Creating the same token for another user should fail
      assert_raise Ecto.ConstraintError, fn ->
        Repo.insert!(%UserToken{
          token: user_token.token,
          user_id: user_fixture().id,
          context: "session"
        })
      end
    end
  end

  describe "get_user_by_session_token/1" do
    setup do
      user = user_fixture()
      token = Users.generate_user_session_token(user)
      %{user: user, token: token}
    end

    test "returns user by token", %{user: user, token: token} do
      assert session_user = Users.get_user_by_session_token(token)
      assert session_user.id == user.id
    end

    test "does not return user for invalid token" do
      refute Users.get_user_by_session_token("oops")
    end

    test "does not return user for expired token", %{token: token} do
      {1, nil} = Repo.update_all(UserToken, set: [inserted_at: ~N[2020-01-01 00:00:00]])
      refute Users.get_user_by_session_token(token)
    end
  end

  describe "delete_user_session_token/1" do
    test "deletes the token" do
      user = user_fixture()
      token = Users.generate_user_session_token(user)
      assert Users.delete_user_session_token(token) == :ok
      refute Users.get_user_by_session_token(token)
    end
  end

  describe "deliver_user_confirmation_instructions/2" do
    setup do
      %{user: user_fixture()}
    end

    test "sends token through notification", %{user: user} do
      token =
        extract_user_token(fn url ->
          Users.deliver_user_confirmation_instructions(user, url)
        end)

      {:ok, token} = Base.url_decode64(token, padding: false)
      assert user_token = Repo.get_by(UserToken, token: :crypto.hash(:sha256, token))
      assert user_token.user_id == user.id
      assert user_token.sent_to == user.email
      assert user_token.context == "confirm"
    end
  end

  describe "confirm_user/1" do
    setup do
      user = user_fixture()

      token =
        extract_user_token(fn url ->
          Users.deliver_user_confirmation_instructions(user, url)
        end)

      %{user: user, token: token}
    end

    test "confirms the email with a valid token", %{user: user, token: token} do
      assert {:ok, confirmed_user} = Users.confirm_user(token)
      assert confirmed_user.confirmed_at
      assert confirmed_user.confirmed_at != user.confirmed_at
      assert Repo.get!(User, user.id).confirmed_at
      refute Repo.get_by(UserToken, user_id: user.id)
    end

    test "does not confirm with invalid token", %{user: user} do
      assert Users.confirm_user("oops") == :error
      refute Repo.get!(User, user.id).confirmed_at
      assert Repo.get_by(UserToken, user_id: user.id)
    end

    test "does not confirm email if token expired", %{user: user, token: token} do
      {1, nil} = Repo.update_all(UserToken, set: [inserted_at: ~N[2020-01-01 00:00:00]])
      assert Users.confirm_user(token) == :error
      refute Repo.get!(User, user.id).confirmed_at
      assert Repo.get_by(UserToken, user_id: user.id)
    end
  end

  describe "deliver_user_reset_password_instructions/2" do
    setup do
      %{user: user_fixture()}
    end

    test "sends token through notification", %{user: user} do
      token =
        extract_user_token(fn url ->
          Users.deliver_user_reset_password_instructions(user, url)
        end)

      {:ok, token} = Base.url_decode64(token, padding: false)
      assert user_token = Repo.get_by(UserToken, token: :crypto.hash(:sha256, token))
      assert user_token.user_id == user.id
      assert user_token.sent_to == user.email
      assert user_token.context == "reset_password"
    end
  end

  describe "get_user_by_reset_password_token/1" do
    setup do
      user = user_fixture()

      token =
        extract_user_token(fn url ->
          Users.deliver_user_reset_password_instructions(user, url)
        end)

      %{user: user, token: token}
    end

    test "returns the user with valid token", %{user: %{id: id}, token: token} do
      assert %User{id: ^id} = Users.get_user_by_reset_password_token(token)
      assert Repo.get_by(UserToken, user_id: id)
    end

    test "does not return the user with invalid token", %{user: user} do
      refute Users.get_user_by_reset_password_token("oops")
      assert Repo.get_by(UserToken, user_id: user.id)
    end

    test "does not return the user if token expired", %{user: user, token: token} do
      {1, nil} = Repo.update_all(UserToken, set: [inserted_at: ~N[2020-01-01 00:00:00]])
      refute Users.get_user_by_reset_password_token(token)
      assert Repo.get_by(UserToken, user_id: user.id)
    end
  end

  describe "reset_user_password/2" do
    setup do
      %{user: user_fixture()}
    end

    test "validates password", %{user: user} do
      {:error, changeset} =
        Users.reset_user_password(user, %{
          password: "short",
          password_confirmation: "another"
        })

      assert %{
               password: ["should be at least 8 character(s)"],
               password_confirmation: ["does not match password"]
             } = errors_on(changeset)
    end

    test "validates maximum values for password for security", %{user: user} do
      too_long = String.duplicate("db", 100)
      {:error, changeset} = Users.reset_user_password(user, %{password: too_long})
      assert "should be at most 72 character(s)" in errors_on(changeset).password
    end

    test "updates the password", %{user: user} do
      {:ok, updated_user} = Users.reset_user_password(user, %{password: "new valid password"})
      assert is_nil(updated_user.password)
      assert Users.get_user_by_email_and_password(user.email, "new valid password")
    end

    test "deletes all tokens for the given user", %{user: user} do
      _ = Users.generate_user_session_token(user)
      {:ok, _} = Users.reset_user_password(user, %{password: "new valid password"})
      refute Repo.get_by(UserToken, user_id: user.id)
    end
  end

  describe "inspect/2 for the User module" do
    test "does not include password" do
      refute inspect(%User{password: "123456"}) =~ "password: \"123456\""
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax_web/controllers/error_html_test.exs
```exs
defmodule LaxWeb.ErrorHTMLTest do
  use LaxWeb.ConnCase, async: true

  # Bring render_to_string/4 for testing custom views
  import Phoenix.Template

  test "renders 404.html" do
    assert render_to_string(LaxWeb.ErrorHTML, "404", "html", []) == "Not Found"
  end

  test "renders 500.html" do
    assert render_to_string(LaxWeb.ErrorHTML, "500", "html", []) == "Internal Server Error"
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax_web/controllers/error_json_test.exs
```exs
defmodule LaxWeb.ErrorJSONTest do
  use LaxWeb.ConnCase, async: true

  test "renders 404" do
    assert LaxWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert LaxWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax_web/controllers/user_session_controller_test.exs
```exs
defmodule LaxWeb.UserSessionControllerTest do
  use LaxWeb.ConnCase, async: true

  import Lax.UsersFixtures

  setup do
    %{user: user_fixture()}
  end

  describe "POST /users/sign-in" do
    test "logs the user in", %{conn: conn, user: user} do
      conn =
        post(conn, ~p"/users/sign-in", %{
          "user" => %{"email" => user.email, "password" => valid_user_password()}
        })

      assert get_session(conn, :user_token)
      assert redirected_to(conn) == ~p"/"

      # Now do a logged in request and assert on the menu
      conn = get(conn, ~p"/")
      response = html_response(conn, 200)
      assert response =~ ~p"/users/settings"
      assert response =~ ~p"/users/sign-out"
    end

    test "logs the user in with remember me", %{conn: conn, user: user} do
      conn =
        post(conn, ~p"/users/sign-in", %{
          "user" => %{
            "email" => user.email,
            "password" => valid_user_password(),
            "remember_me" => "true"
          }
        })

      assert conn.resp_cookies["_lax_web_user_remember_me"]
      assert redirected_to(conn) == ~p"/"
    end

    test "logs the user in with return to", %{conn: conn, user: user} do
      conn =
        conn
        |> init_test_session(user_return_to: "/foo/bar")
        |> post(~p"/users/sign-in", %{
          "user" => %{
            "email" => user.email,
            "password" => valid_user_password()
          }
        })

      assert redirected_to(conn) == "/foo/bar"
      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~ "Welcome back!"
    end

    test "login following registration", %{conn: conn, user: user} do
      conn =
        conn
        |> post(~p"/users/sign-in", %{
          "_action" => "registered",
          "user" => %{
            "email" => user.email,
            "password" => valid_user_password()
          }
        })

      assert redirected_to(conn) == ~p"/"
      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~ "Account created successfully"
    end

    test "login following password update", %{conn: conn, user: user} do
      conn =
        conn
        |> post(~p"/users/sign-in", %{
          "_action" => "password_updated",
          "user" => %{
            "email" => user.email,
            "password" => valid_user_password()
          }
        })

      assert redirected_to(conn) == ~p"/users/settings"
      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~ "Password updated successfully"
    end

    test "redirects to login page with invalid credentials", %{conn: conn} do
      conn =
        post(conn, ~p"/users/sign-in", %{
          "user" => %{"email" => "invalid@email.com", "password" => "invalid_password"}
        })

      assert Phoenix.Flash.get(conn.assigns.flash, :error) == "Invalid email or password"
      assert redirected_to(conn) == ~p"/users/sign-in"
    end
  end

  describe "DELETE /users/sign-out" do
    test "logs the user out", %{conn: conn, user: user} do
      conn = conn |> log_in_user(user) |> delete(~p"/users/sign-out")
      assert redirected_to(conn) == ~p"/"
      refute get_session(conn, :user_token)
      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~ "Signed out"
    end

    test "succeeds even if the user is not logged in", %{conn: conn} do
      conn = delete(conn, ~p"/users/sign-out")
      assert redirected_to(conn) == ~p"/"
      refute get_session(conn, :user_token)
      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~ "Signed out"
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax_web/live/user_confirmation_instructions_live_test.exs
```exs
defmodule LaxWeb.UserConfirmationInstructionsLiveTest do
  use LaxWeb.ConnCase, async: true

  import Phoenix.LiveViewTest
  import Lax.UsersFixtures

  alias Lax.Users
  alias Lax.Repo

  setup do
    %{user: user_fixture()}
  end

  describe "Resend confirmation" do
    test "renders the resend confirmation page", %{conn: conn} do
      {:ok, _lv, html} = live(conn, ~p"/users/confirm")
      assert html =~ "Resend confirmation instructions"
    end

    test "sends a new confirmation token", %{conn: conn, user: user} do
      {:ok, lv, _html} = live(conn, ~p"/users/confirm")

      {:ok, conn} =
        lv
        |> form("#resend_confirmation_form", user: %{email: user.email})
        |> render_submit()
        |> follow_redirect(conn, ~p"/")

      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~
               "If your email is in our system"

      assert Repo.get_by!(Users.UserToken, user_id: user.id).context == "confirm"
    end

    test "does not send confirmation token if user is confirmed", %{conn: conn, user: user} do
      Repo.update!(Users.User.confirm_changeset(user))

      {:ok, lv, _html} = live(conn, ~p"/users/confirm")

      {:ok, conn} =
        lv
        |> form("#resend_confirmation_form", user: %{email: user.email})
        |> render_submit()
        |> follow_redirect(conn, ~p"/")

      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~
               "If your email is in our system"

      refute Repo.get_by(Users.UserToken, user_id: user.id)
    end

    test "does not send confirmation token if email is invalid", %{conn: conn} do
      {:ok, lv, _html} = live(conn, ~p"/users/confirm")

      {:ok, conn} =
        lv
        |> form("#resend_confirmation_form", user: %{email: "unknown@example.com"})
        |> render_submit()
        |> follow_redirect(conn, ~p"/")

      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~
               "If your email is in our system"

      assert Repo.all(Users.UserToken) == []
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax_web/live/user_confirmation_live_test.exs
```exs
defmodule LaxWeb.UserConfirmationLiveTest do
  use LaxWeb.ConnCase, async: true

  import Phoenix.LiveViewTest
  import Lax.UsersFixtures

  alias Lax.Users
  alias Lax.Repo

  setup do
    %{user: user_fixture()}
  end

  describe "Confirm user" do
    test "renders confirmation page", %{conn: conn} do
      {:ok, _lv, html} = live(conn, ~p"/users/confirm/some-token")
      assert html =~ "Confirm Account"
    end

    test "confirms the given token once", %{conn: conn, user: user} do
      token =
        extract_user_token(fn url ->
          Users.deliver_user_confirmation_instructions(user, url)
        end)

      {:ok, lv, _html} = live(conn, ~p"/users/confirm/#{token}")

      result =
        lv
        |> form("#confirmation_form")
        |> render_submit()
        |> follow_redirect(conn, "/")

      assert {:ok, conn} = result

      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~
               "User confirmed successfully"

      assert Users.get_user!(user.id).confirmed_at
      refute get_session(conn, :user_token)
      assert Repo.all(Users.UserToken) == []

      # when not logged in
      {:ok, lv, _html} = live(conn, ~p"/users/confirm/#{token}")

      result =
        lv
        |> form("#confirmation_form")
        |> render_submit()
        |> follow_redirect(conn, "/")

      assert {:ok, conn} = result

      assert Phoenix.Flash.get(conn.assigns.flash, :error) =~
               "User confirmation link is invalid or it has expired"

      # when logged in
      conn =
        build_conn()
        |> log_in_user(user)

      {:ok, lv, _html} = live(conn, ~p"/users/confirm/#{token}")

      result =
        lv
        |> form("#confirmation_form")
        |> render_submit()
        |> follow_redirect(conn, "/")

      assert {:ok, conn} = result
      refute Phoenix.Flash.get(conn.assigns.flash, :error)
    end

    test "does not confirm email with invalid token", %{conn: conn, user: user} do
      {:ok, lv, _html} = live(conn, ~p"/users/confirm/invalid-token")

      {:ok, conn} =
        lv
        |> form("#confirmation_form")
        |> render_submit()
        |> follow_redirect(conn, ~p"/")

      assert Phoenix.Flash.get(conn.assigns.flash, :error) =~
               "User confirmation link is invalid or it has expired"

      refute Users.get_user!(user.id).confirmed_at
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax_web/live/user_forgot_password_live_test.exs
```exs
defmodule LaxWeb.UserForgotPasswordLiveTest do
  use LaxWeb.ConnCase, async: true

  import Phoenix.LiveViewTest
  import Lax.UsersFixtures

  alias Lax.Users
  alias Lax.Repo

  describe "Forgot password page" do
    test "renders email page", %{conn: conn} do
      {:ok, lv, html} = live(conn, ~p"/users/reset-password")

      assert html =~ "Forgot your password?"
      assert has_element?(lv, ~s|a[href="#{~p"/users/register"}"]|, "Register")
      assert has_element?(lv, ~s|a[href="#{~p"/users/sign-in"}"]|, "Sign in")
    end

    test "redirects if already logged in", %{conn: conn} do
      result =
        conn
        |> log_in_user(user_fixture())
        |> live(~p"/users/reset-password")
        |> follow_redirect(conn, ~p"/")

      assert {:ok, _conn} = result
    end
  end

  describe "Reset link" do
    setup do
      %{user: user_fixture()}
    end

    test "sends a new reset password token", %{conn: conn, user: user} do
      {:ok, lv, _html} = live(conn, ~p"/users/reset-password")

      {:ok, conn} =
        lv
        |> form("#reset_password_form", user: %{"email" => user.email})
        |> render_submit()
        |> follow_redirect(conn, "/")

      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~ "If your email is in our system"

      assert Repo.get_by!(Users.UserToken, user_id: user.id).context ==
               "reset_password"
    end

    test "does not send reset password token if email is invalid", %{conn: conn} do
      {:ok, lv, _html} = live(conn, ~p"/users/reset-password")

      {:ok, conn} =
        lv
        |> form("#reset_password_form", user: %{"email" => "unknown@example.com"})
        |> render_submit()
        |> follow_redirect(conn, "/")

      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~ "If your email is in our system"
      assert Repo.all(Users.UserToken) == []
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax_web/live/user_login_live_test.exs
```exs
defmodule LaxWeb.UserLoginLiveTest do
  use LaxWeb.ConnCase, async: true

  import Phoenix.LiveViewTest
  import Lax.UsersFixtures

  describe "Sign in page" do
    test "renders Sign in page", %{conn: conn} do
      {:ok, _lv, html} = live(conn, ~p"/users/sign-in")

      assert html =~ "Sign in"
      assert html =~ "Forgot your password?"
    end

    test "redirects if already logged in", %{conn: conn} do
      result =
        conn
        |> log_in_user(user_fixture())
        |> live(~p"/users/sign-in")
        |> follow_redirect(conn, "/")

      assert {:ok, _conn} = result
    end
  end

  describe "user login" do
    test "redirects if user login with valid credentials", %{conn: conn} do
      password = "123456789abcd"
      user = user_fixture(%{password: password})

      {:ok, lv, _html} = live(conn, ~p"/users/sign-in")

      form =
        form(lv, "#login_form", user: %{email: user.email, password: password, remember_me: true})

      conn = submit_form(form, conn)

      assert redirected_to(conn) == ~p"/"
    end

    test "redirects to login page with a flash error if there are no valid credentials", %{
      conn: conn
    } do
      {:ok, lv, _html} = live(conn, ~p"/users/sign-in")

      form =
        form(lv, "#login_form",
          user: %{email: "test@email.com", password: "123456", remember_me: true}
        )

      conn = submit_form(form, conn)

      assert Phoenix.Flash.get(conn.assigns.flash, :error) == "Invalid email or password"

      assert redirected_to(conn) == "/users/sign-in"
    end
  end

  describe "login navigation" do
    test "redirects to registration page when the Register button is clicked", %{conn: conn} do
      {:ok, lv, _html} = live(conn, ~p"/users/sign-in")

      {:ok, _login_live, login_html} =
        lv
        |> element(~s|main a:fl-contains("Sign up")|)
        |> render_click()
        |> follow_redirect(conn, ~p"/users/register")

      assert login_html =~ "Register"
    end

    test "redirects to forgot password page when the Forgot Password button is clicked", %{
      conn: conn
    } do
      {:ok, lv, _html} = live(conn, ~p"/users/sign-in")

      {:ok, conn} =
        lv
        |> element(~s|main a:fl-contains("Forgot your password?")|)
        |> render_click()
        |> follow_redirect(conn, ~p"/users/reset-password")

      assert conn.resp_body =~ "Forgot your password?"
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax_web/live/user_registration_live_test.exs
```exs
defmodule LaxWeb.UserRegistrationLiveTest do
  use LaxWeb.ConnCase, async: true

  import Phoenix.LiveViewTest
  import Lax.UsersFixtures

  describe "Registration page" do
    test "renders registration page", %{conn: conn} do
      {:ok, _lv, html} = live(conn, ~p"/users/register")

      assert html =~ "Register"
      assert html =~ "Sign in"
    end

    test "redirects if already logged in", %{conn: conn} do
      result =
        conn
        |> log_in_user(user_fixture())
        |> live(~p"/users/register")
        |> follow_redirect(conn, "/")

      assert {:ok, _conn} = result
    end

    test "renders errors for invalid data", %{conn: conn} do
      {:ok, lv, _html} = live(conn, ~p"/users/register")

      result =
        lv
        |> element("#registration_form")
        |> render_change(user: %{"email" => "with spaces", "password" => "short"})

      assert result =~ "Register"
      assert result =~ "must have the @ sign and no spaces"
      assert result =~ "should be at least 8 character"
    end
  end

  describe "register user" do
    test "creates account and logs the user in", %{conn: conn} do
      {:ok, lv, _html} = live(conn, ~p"/users/register")

      email = unique_user_email()

      form =
        form(lv, "#registration_form", user: valid_user_attributes(email: email, time_zone: ""))

      render_submit(form, %{"user" => %{"time_zone" => "Europe/Paris"}})
      conn = follow_trigger_action(form, conn)

      assert redirected_to(conn) == ~p"/"

      # Now do a logged in request and assert on the menu
      conn = get(conn, "/")
      response = html_response(conn, 200)
      assert response =~ "Sign out"
    end

    test "renders errors for duplicated email", %{conn: conn} do
      {:ok, lv, _html} = live(conn, ~p"/users/register")

      user = user_fixture(%{email: "test@email.com"})

      result =
        lv
        |> form("#registration_form",
          user: %{"email" => user.email, "password" => "valid_password"}
        )
        |> render_submit()

      assert result =~ "has already been taken"
    end
  end

  describe "registration navigation" do
    test "redirects to login page when the Sign in button is clicked", %{conn: conn} do
      {:ok, lv, _html} = live(conn, ~p"/users/register")

      {:ok, _login_live, login_html} =
        lv
        |> element(~s|main a:fl-contains("Sign in")|)
        |> render_click()
        |> follow_redirect(conn, ~p"/users/sign-in")

      assert login_html =~ "Sign in"
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax_web/live/user_reset_password_live_test.exs
```exs
defmodule LaxWeb.UserResetPasswordLiveTest do
  use LaxWeb.ConnCase, async: true

  import Phoenix.LiveViewTest
  import Lax.UsersFixtures

  alias Lax.Users

  setup do
    user = user_fixture()

    token =
      extract_user_token(fn url ->
        Users.deliver_user_reset_password_instructions(user, url)
      end)

    %{token: token, user: user}
  end

  describe "Reset password page" do
    test "renders reset password with valid token", %{conn: conn, token: token} do
      {:ok, _lv, html} = live(conn, ~p"/users/reset-password/#{token}")

      assert html =~ "Reset Password"
    end

    test "does not render reset password with invalid token", %{conn: conn} do
      {:error, {:redirect, to}} = live(conn, ~p"/users/reset-password/invalid")

      assert to == %{
               flash: %{"error" => "Reset password link is invalid or it has expired."},
               to: ~p"/"
             }
    end

    test "renders errors for invalid data", %{conn: conn, token: token} do
      {:ok, lv, _html} = live(conn, ~p"/users/reset-password/#{token}")

      result =
        lv
        |> element("#reset_password_form")
        |> render_change(
          user: %{"password" => "secret1", "password_confirmation" => "secret123456"}
        )

      assert result =~ "should be at least 8 character"
      assert result =~ "does not match password"
    end
  end

  describe "Reset Password" do
    test "resets password once", %{conn: conn, token: token, user: user} do
      {:ok, lv, _html} = live(conn, ~p"/users/reset-password/#{token}")

      {:ok, conn} =
        lv
        |> form("#reset_password_form",
          user: %{
            "password" => "new valid password",
            "password_confirmation" => "new valid password"
          }
        )
        |> render_submit()
        |> follow_redirect(conn, ~p"/users/sign-in")

      refute get_session(conn, :user_token)
      assert Phoenix.Flash.get(conn.assigns.flash, :info) =~ "Password reset successfully"
      assert Users.get_user_by_email_and_password(user.email, "new valid password")
    end

    test "does not reset password on invalid data", %{conn: conn, token: token} do
      {:ok, lv, _html} = live(conn, ~p"/users/reset-password/#{token}")

      result =
        lv
        |> form("#reset_password_form",
          user: %{
            "password" => "short",
            "password_confirmation" => "does not match"
          }
        )
        |> render_submit()

      assert result =~ "Reset Password"
      assert result =~ "should be at least 8 character(s)"
      assert result =~ "does not match password"
    end
  end

  describe "Reset password navigation" do
    test "redirects to login page when the Sign in button is clicked", %{conn: conn, token: token} do
      {:ok, lv, _html} = live(conn, ~p"/users/reset-password/#{token}")

      {:ok, conn} =
        lv
        |> element(~s|main a:fl-contains("Sign in")|)
        |> render_click()
        |> follow_redirect(conn, ~p"/users/sign-in")

      assert conn.resp_body =~ "Sign in"
    end

    test "redirects to registration page when the Register button is clicked", %{
      conn: conn,
      token: token
    } do
      {:ok, lv, _html} = live(conn, ~p"/users/reset-password/#{token}")

      {:ok, conn} =
        lv
        |> element(~s|main a:fl-contains("Register")|)
        |> render_click()
        |> follow_redirect(conn, ~p"/users/register")

      assert conn.resp_body =~ "Register"
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax_web/live/user_settings_live_test.exs
```exs
defmodule LaxWeb.UserSettingsLiveTest do
  use LaxWeb.ConnCase, async: true

  alias Lax.Users
  import Phoenix.LiveViewTest
  import Lax.UsersFixtures

  describe "Settings page" do
    test "renders settings page", %{conn: conn} do
      {:ok, _lv, html} =
        conn
        |> log_in_user(user_fixture())
        |> live(~p"/users/settings")

      assert html =~ "Change Email"
      assert html =~ "Change Password"
    end

    test "redirects if user is not logged in", %{conn: conn} do
      assert {:error, redirect} = live(conn, ~p"/users/settings")

      assert {:redirect, %{to: path, flash: flash}} = redirect
      assert path == ~p"/users/sign-in"
      assert %{"error" => "You must log in to access this page."} = flash
    end
  end

  describe "update email form" do
    setup %{conn: conn} do
      password = valid_user_password()
      user = user_fixture(%{password: password})
      %{conn: log_in_user(conn, user), user: user, password: password}
    end

    test "updates the user email", %{conn: conn, password: password, user: user} do
      new_email = unique_user_email()

      {:ok, lv, _html} = live(conn, ~p"/users/settings")

      result =
        lv
        |> form("#email_form", %{
          "current_password" => password,
          "user" => %{"email" => new_email}
        })
        |> render_submit()

      assert result =~ "A link to confirm your email"
      assert Users.get_user_by_email(user.email)
    end

    test "renders errors with invalid data (phx-change)", %{conn: conn} do
      {:ok, lv, _html} = live(conn, ~p"/users/settings")

      result =
        lv
        |> element("#email_form")
        |> render_change(%{
          "action" => "update_email",
          "current_password" => "invalid",
          "user" => %{"email" => "with spaces"}
        })

      assert result =~ "Change Email"
      assert result =~ "must have the @ sign and no spaces"
    end

    test "renders errors with invalid data (phx-submit)", %{conn: conn, user: user} do
      {:ok, lv, _html} = live(conn, ~p"/users/settings")

      result =
        lv
        |> form("#email_form", %{
          "current_password" => "invalid",
          "user" => %{"email" => user.email}
        })
        |> render_submit()

      assert result =~ "Change Email"
      assert result =~ "did not change"
      assert result =~ "is not valid"
    end
  end

  describe "update password form" do
    setup %{conn: conn} do
      password = valid_user_password()
      user = user_fixture(%{password: password})
      %{conn: log_in_user(conn, user), user: user, password: password}
    end

    test "updates the user password", %{conn: conn, user: user, password: password} do
      new_password = valid_user_password()

      {:ok, lv, _html} = live(conn, ~p"/users/settings")

      form =
        form(lv, "#password_form", %{
          "current_password" => password,
          "user" => %{
            "email" => user.email,
            "password" => new_password,
            "password_confirmation" => new_password
          }
        })

      render_submit(form)

      new_password_conn = follow_trigger_action(form, conn)

      assert redirected_to(new_password_conn) == ~p"/users/settings"

      assert get_session(new_password_conn, :user_token) != get_session(conn, :user_token)

      assert Phoenix.Flash.get(new_password_conn.assigns.flash, :info) =~
               "Password updated successfully"

      assert Users.get_user_by_email_and_password(user.email, new_password)
    end

    test "renders errors with invalid data (phx-change)", %{conn: conn} do
      {:ok, lv, _html} = live(conn, ~p"/users/settings")

      result =
        lv
        |> element("#password_form")
        |> render_change(%{
          "current_password" => "invalid",
          "user" => %{
            "password" => "short",
            "password_confirmation" => "does not match"
          }
        })

      assert result =~ "Change Password"
      assert result =~ "should be at least 8 character(s)"
      assert result =~ "does not match password"
    end

    test "renders errors with invalid data (phx-submit)", %{conn: conn} do
      {:ok, lv, _html} = live(conn, ~p"/users/settings")

      result =
        lv
        |> form("#password_form", %{
          "current_password" => "invalid",
          "user" => %{
            "password" => "short",
            "password_confirmation" => "does not match"
          }
        })
        |> render_submit()

      assert result =~ "Change Password"
      assert result =~ "should be at least 8 character(s)"
      assert result =~ "does not match password"
      assert result =~ "is not valid"
    end
  end

  describe "confirm email" do
    setup %{conn: conn} do
      user = user_fixture()
      email = unique_user_email()

      token =
        extract_user_token(fn url ->
          Users.deliver_user_update_email_instructions(%{user | email: email}, user.email, url)
        end)

      %{conn: log_in_user(conn, user), token: token, email: email, user: user}
    end

    test "updates the user email once", %{conn: conn, user: user, token: token, email: email} do
      {:error, redirect} = live(conn, ~p"/users/settings/confirm-email/#{token}")

      assert {:live_redirect, %{to: path, flash: flash}} = redirect
      assert path == ~p"/users/settings"
      assert %{"info" => message} = flash
      assert message == "Email changed successfully."
      refute Users.get_user_by_email(user.email)
      assert Users.get_user_by_email(email)

      # use confirm token again
      {:error, redirect} = live(conn, ~p"/users/settings/confirm-email/#{token}")
      assert {:live_redirect, %{to: path, flash: flash}} = redirect
      assert path == ~p"/users/settings"
      assert %{"error" => message} = flash
      assert message == "Email change link is invalid or it has expired."
    end

    test "does not update email with invalid token", %{conn: conn, user: user} do
      {:error, redirect} = live(conn, ~p"/users/settings/confirm-email/oops")
      assert {:live_redirect, %{to: path, flash: flash}} = redirect
      assert path == ~p"/users/settings"
      assert %{"error" => message} = flash
      assert message == "Email change link is invalid or it has expired."
      assert Users.get_user_by_email(user.email)
    end

    test "redirects if user is not logged in", %{token: token} do
      conn = build_conn()
      {:error, redirect} = live(conn, ~p"/users/settings/confirm-email/#{token}")
      assert {:redirect, %{to: path, flash: flash}} = redirect
      assert path == ~p"/users/sign-in"
      assert %{"error" => message} = flash
      assert message == "You must log in to access this page."
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/lax_web/user_auth_test.exs
```exs
defmodule LaxWeb.UserAuthTest do
  use LaxWeb.ConnCase, async: true

  alias Phoenix.LiveView
  alias Lax.Users
  alias LaxWeb.UserAuth
  import Lax.UsersFixtures

  @remember_me_cookie "_lax_web_user_remember_me"

  setup %{conn: conn} do
    conn =
      conn
      |> Map.replace!(:secret_key_base, LaxWeb.Endpoint.config(:secret_key_base))
      |> init_test_session(%{})

    %{user: user_fixture(), conn: conn}
  end

  describe "log_in_user/3" do
    test "stores the user token in the session", %{conn: conn, user: user} do
      conn = UserAuth.log_in_user(conn, user)
      assert token = get_session(conn, :user_token)
      assert get_session(conn, :live_socket_id) == "users_sessions:#{Base.url_encode64(token)}"
      assert redirected_to(conn) == ~p"/"
      assert Users.get_user_by_session_token(token)
    end

    test "clears everything previously stored in the session", %{conn: conn, user: user} do
      conn = conn |> put_session(:to_be_removed, "value") |> UserAuth.log_in_user(user)
      refute get_session(conn, :to_be_removed)
    end

    test "redirects to the configured path", %{conn: conn, user: user} do
      conn = conn |> put_session(:user_return_to, "/hello") |> UserAuth.log_in_user(user)
      assert redirected_to(conn) == "/hello"
    end

    test "writes a cookie if remember_me is configured", %{conn: conn, user: user} do
      conn = conn |> fetch_cookies() |> UserAuth.log_in_user(user, %{"remember_me" => "true"})
      assert get_session(conn, :user_token) == conn.cookies[@remember_me_cookie]

      assert %{value: signed_token, max_age: max_age} = conn.resp_cookies[@remember_me_cookie]
      assert signed_token != get_session(conn, :user_token)
      assert max_age == 5_184_000
    end
  end

  describe "logout_user/1" do
    test "erases session and cookies", %{conn: conn, user: user} do
      user_token = Users.generate_user_session_token(user)

      conn =
        conn
        |> put_session(:user_token, user_token)
        |> put_req_cookie(@remember_me_cookie, user_token)
        |> fetch_cookies()
        |> UserAuth.log_out_user()

      refute get_session(conn, :user_token)
      refute conn.cookies[@remember_me_cookie]
      assert %{max_age: 0} = conn.resp_cookies[@remember_me_cookie]
      assert redirected_to(conn) == ~p"/"
      refute Users.get_user_by_session_token(user_token)
    end

    test "broadcasts to the given live_socket_id", %{conn: conn} do
      live_socket_id = "users_sessions:abcdef-token"
      LaxWeb.Endpoint.subscribe(live_socket_id)

      conn
      |> put_session(:live_socket_id, live_socket_id)
      |> UserAuth.log_out_user()

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect", topic: ^live_socket_id}
    end

    test "works even if user is already logged out", %{conn: conn} do
      conn = conn |> fetch_cookies() |> UserAuth.log_out_user()
      refute get_session(conn, :user_token)
      assert %{max_age: 0} = conn.resp_cookies[@remember_me_cookie]
      assert redirected_to(conn) == ~p"/"
    end
  end

  describe "fetch_current_user/2" do
    test "authenticates user from session", %{conn: conn, user: user} do
      user_token = Users.generate_user_session_token(user)
      conn = conn |> put_session(:user_token, user_token) |> UserAuth.fetch_current_user([])
      assert conn.assigns.current_user.id == user.id
    end

    test "authenticates user from cookies", %{conn: conn, user: user} do
      logged_in_conn =
        conn |> fetch_cookies() |> UserAuth.log_in_user(user, %{"remember_me" => "true"})

      user_token = logged_in_conn.cookies[@remember_me_cookie]
      %{value: signed_token} = logged_in_conn.resp_cookies[@remember_me_cookie]

      conn =
        conn
        |> put_req_cookie(@remember_me_cookie, signed_token)
        |> UserAuth.fetch_current_user([])

      assert conn.assigns.current_user.id == user.id
      assert get_session(conn, :user_token) == user_token

      assert get_session(conn, :live_socket_id) ==
               "users_sessions:#{Base.url_encode64(user_token)}"
    end

    test "does not authenticate if data is missing", %{conn: conn, user: user} do
      _ = Users.generate_user_session_token(user)
      conn = UserAuth.fetch_current_user(conn, [])
      refute get_session(conn, :user_token)
      refute conn.assigns.current_user
    end
  end

  describe "on_mount :mount_current_user" do
    test "assigns current_user based on a valid user_token", %{conn: conn, user: user} do
      user_token = Users.generate_user_session_token(user)
      session = conn |> put_session(:user_token, user_token) |> get_session()

      {:cont, updated_socket} =
        UserAuth.on_mount(:mount_current_user, %{}, session, %LiveView.Socket{})

      assert updated_socket.assigns.current_user.id == user.id
    end

    test "assigns nil to current_user assign if there isn't a valid user_token", %{conn: conn} do
      user_token = "invalid_token"
      session = conn |> put_session(:user_token, user_token) |> get_session()

      {:cont, updated_socket} =
        UserAuth.on_mount(:mount_current_user, %{}, session, %LiveView.Socket{})

      assert updated_socket.assigns.current_user == nil
    end

    test "assigns nil to current_user assign if there isn't a user_token", %{conn: conn} do
      session = conn |> get_session()

      {:cont, updated_socket} =
        UserAuth.on_mount(:mount_current_user, %{}, session, %LiveView.Socket{})

      assert updated_socket.assigns.current_user == nil
    end
  end

  describe "on_mount :ensure_authenticated" do
    test "authenticates current_user based on a valid user_token", %{conn: conn, user: user} do
      user_token = Users.generate_user_session_token(user)
      session = conn |> put_session(:user_token, user_token) |> get_session()

      {:cont, updated_socket} =
        UserAuth.on_mount(:ensure_authenticated, %{}, session, %LiveView.Socket{})

      assert updated_socket.assigns.current_user.id == user.id
    end

    test "redirects to login page if there isn't a valid user_token", %{conn: conn} do
      user_token = "invalid_token"
      session = conn |> put_session(:user_token, user_token) |> get_session()

      socket = %LiveView.Socket{
        endpoint: LaxWeb.Endpoint,
        assigns: %{__changed__: %{}, flash: %{}}
      }

      {:halt, updated_socket} = UserAuth.on_mount(:ensure_authenticated, %{}, session, socket)
      assert updated_socket.assigns.current_user == nil
    end

    test "redirects to login page if there isn't a user_token", %{conn: conn} do
      session = conn |> get_session()

      socket = %LiveView.Socket{
        endpoint: LaxWeb.Endpoint,
        assigns: %{__changed__: %{}, flash: %{}}
      }

      {:halt, updated_socket} = UserAuth.on_mount(:ensure_authenticated, %{}, session, socket)
      assert updated_socket.assigns.current_user == nil
    end
  end

  describe "on_mount :redirect_if_user_is_authenticated" do
    test "redirects if there is an authenticated  user ", %{conn: conn, user: user} do
      user_token = Users.generate_user_session_token(user)
      session = conn |> put_session(:user_token, user_token) |> get_session()

      assert {:halt, _updated_socket} =
               UserAuth.on_mount(
                 :redirect_if_user_is_authenticated,
                 %{},
                 session,
                 %LiveView.Socket{}
               )
    end

    test "doesn't redirect if there is no authenticated user", %{conn: conn} do
      session = conn |> get_session()

      assert {:cont, _updated_socket} =
               UserAuth.on_mount(
                 :redirect_if_user_is_authenticated,
                 %{},
                 session,
                 %LiveView.Socket{}
               )
    end
  end

  describe "redirect_if_user_is_authenticated/2" do
    test "redirects if user is authenticated", %{conn: conn, user: user} do
      conn = conn |> assign(:current_user, user) |> UserAuth.redirect_if_user_is_authenticated([])
      assert conn.halted
      assert redirected_to(conn) == ~p"/"
    end

    test "does not redirect if user is not authenticated", %{conn: conn} do
      conn = UserAuth.redirect_if_user_is_authenticated(conn, [])
      refute conn.halted
      refute conn.status
    end
  end

  describe "require_authenticated_user/2" do
    test "redirects if user is not authenticated", %{conn: conn} do
      conn = conn |> fetch_flash() |> UserAuth.require_authenticated_user([])
      assert conn.halted

      assert redirected_to(conn) == ~p"/users/sign-in"

      assert Phoenix.Flash.get(conn.assigns.flash, :error) ==
               "You must log in to access this page."
    end

    test "stores the path to redirect to on GET", %{conn: conn} do
      halted_conn =
        %{conn | path_info: ["foo"], query_string: ""}
        |> fetch_flash()
        |> UserAuth.require_authenticated_user([])

      assert halted_conn.halted
      assert get_session(halted_conn, :user_return_to) == "/foo"

      halted_conn =
        %{conn | path_info: ["foo"], query_string: "bar=baz"}
        |> fetch_flash()
        |> UserAuth.require_authenticated_user([])

      assert halted_conn.halted
      assert get_session(halted_conn, :user_return_to) == "/foo?bar=baz"

      halted_conn =
        %{conn | path_info: ["foo"], query_string: "bar", method: "POST"}
        |> fetch_flash()
        |> UserAuth.require_authenticated_user([])

      assert halted_conn.halted
      refute get_session(halted_conn, :user_return_to)
    end

    test "does not redirect if user is authenticated", %{conn: conn, user: user} do
      conn = conn |> assign(:current_user, user) |> UserAuth.require_authenticated_user([])
      refute conn.halted
      refute conn.status
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/support/fixtures/users_fixtures.ex
```ex
defmodule Lax.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Lax.Users` context.
  """

  def unique_user_email, do: "user#{System.unique_integer()}@example.com"
  def unique_user_username, do: "user#{System.unique_integer()}name"
  def valid_user_password, do: "hello world!"
  def valid_time_zone, do: "Europe/Paris"

  def valid_user_attributes(attrs \\ %{}) do
    Enum.into(attrs, %{
      email: unique_user_email(),
      username: unique_user_username(),
      password: valid_user_password(),
      time_zone: valid_time_zone()
    })
  end

  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> valid_user_attributes()
      |> Lax.Users.register_user()

    user
  end

  def extract_user_token(fun) do
    {:ok, captured_email} = fun.(&"[TOKEN]#{&1}[TOKEN]")
    [_, token | _] = String.split(captured_email.text_body, "[TOKEN]")
    token
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/support/conn_case.ex
```ex
defmodule LaxWeb.ConnCase do
  @moduledoc """
  This module defines the test case to be used by
  tests that require setting up a connection.

  Such tests rely on `Phoenix.ConnTest` and also
  import other functionality to make it easier
  to build common data structures and query the data layer.

  Finally, if the test case interacts with the database,
  we enable the SQL sandbox, so changes done to the database
  are reverted at the end of every test. If you are using
  PostgreSQL, you can even run database tests asynchronously
  by setting `use LaxWeb.ConnCase, async: true`, although
  this option is not recommended for other databases.
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      # The default endpoint for testing
      @endpoint LaxWeb.Endpoint

      use LaxWeb, :verified_routes

      # Import conveniences for testing with connections
      import Plug.Conn
      import Phoenix.ConnTest
      import LaxWeb.ConnCase
    end
  end

  setup tags do
    Lax.DataCase.setup_sandbox(tags)
    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end

  @doc """
  Setup helper that registers and logs in users.

      setup :register_and_log_in_user

  It stores an updated connection and a registered user in the
  test context.
  """
  def register_and_log_in_user(%{conn: conn}) do
    user = Lax.UsersFixtures.user_fixture()
    %{conn: log_in_user(conn, user), user: user}
  end

  @doc """
  Logs the given `user` into the `conn`.

  It returns an updated `conn`.
  """
  def log_in_user(conn, user) do
    token = Lax.Users.generate_user_session_token(user)

    conn
    |> Phoenix.ConnTest.init_test_session(%{})
    |> Plug.Conn.put_session(:user_token, token)
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/support/data_case.ex
```ex
defmodule Lax.DataCase do
  @moduledoc """
  This module defines the setup for tests requiring
  access to the application's data layer.

  You may define functions here to be used as helpers in
  your tests.

  Finally, if the test case interacts with the database,
  we enable the SQL sandbox, so changes done to the database
  are reverted at the end of every test. If you are using
  PostgreSQL, you can even run database tests asynchronously
  by setting `use Lax.DataCase, async: true`, although
  this option is not recommended for other databases.
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      alias Lax.Repo

      import Ecto
      import Ecto.Changeset
      import Ecto.Query
      import Lax.DataCase
    end
  end

  setup tags do
    Lax.DataCase.setup_sandbox(tags)
    :ok
  end

  @doc """
  Sets up the sandbox based on the test tags.
  """
  def setup_sandbox(tags) do
    pid = Ecto.Adapters.SQL.Sandbox.start_owner!(Lax.Repo, shared: not tags[:async])
    on_exit(fn -> Ecto.Adapters.SQL.Sandbox.stop_owner(pid) end)
  end

  @doc """
  A helper that transforms changeset errors into a map of messages.

      assert {:error, changeset} = Accounts.create_user(%{password: "short"})
      assert "password is too short" in errors_on(changeset).password
      assert %{password: ["password is too short"]} = errors_on(changeset)

  """
  def errors_on(changeset) do
    Ecto.Changeset.traverse_errors(changeset, fn {message, opts} ->
      Regex.replace(~r"%{(\w+)}", message, fn _, key ->
        opts |> Keyword.get(String.to_existing_atom(key), key) |> to_string()
      end)
    end)
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/test/test_helper.exs
```exs
ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Lax.Repo, :manual)

```

File: /Users/mhostetler/Source/ElixirMentor/lax/mix.exs
```exs
defmodule Lax.MixProject do
  use Mix.Project

  def project do
    [
      app: :lax,
      version: "0.1.0",
      elixir: "~> 1.14",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {Lax.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:lynx, git: "https://github.com/elixir-saas/lynx.git", tag: "v0.1.2"},
      {:tzdata, "~> 1.1"},
      {:bcrypt_elixir, "~> 3.0"},
      {:phoenix, "~> 1.7.12"},
      {:phoenix_ecto, "~> 4.4"},
      {:ecto_sql, "~> 3.10"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix_html, "~> 4.0"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:phoenix_live_view, "~> 0.20.2"},
      {:floki, ">= 0.30.0"},
      {:esbuild, "~> 0.8", runtime: Mix.env() == :dev},
      {:tailwind, "~> 0.2", runtime: Mix.env() == :dev},
      {:heroicons,
       github: "tailwindlabs/heroicons",
       tag: "v2.1.1",
       sparse: "optimized",
       app: false,
       compile: false,
       depth: 1},
      {:swoosh, "~> 1.5"},
      {:finch, "~> 0.13"},
      {:telemetry_metrics, "~> 1.0"},
      {:telemetry_poller, "~> 1.0"},
      {:gettext, "~> 0.20"},
      {:jason, "~> 1.2"},
      {:dns_cluster, "~> 0.1.1"},
      {:bandit, "~> 1.2"},
      {:live_view_native,
       github: "liveview-native/live_view_native", branch: "main", override: true},
      {:live_view_native_stylesheet,
       github: "liveview-native/live_view_native_stylesheet", branch: "main"},
      {:live_view_native_swiftui,
       github: "liveview-native/liveview-client-swiftui", branch: "main"},
      {:live_view_native_live_form,
       github: "liveview-native/liveview-native-live-form", branch: "main"},
      {:pigeon, "~> 1.6.2"},
      {:kadabra, "~> 0.6.0"}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      setup: ["deps.get", "ecto.setup", "assets.setup", "assets.build"],
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "run priv/repo/seeds.exs", "test"],
      "assets.setup": ["tailwind.install --if-missing", "esbuild.install --if-missing"],
      "assets.build": ["tailwind lax", "esbuild lax"],
      "assets.deploy": [
        "tailwind lax --minify",
        "esbuild lax --minify",
        "phx.digest"
      ]
    ]
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/README.md
```md
# Lax

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

```

File: /Users/mhostetler/Source/ElixirMentor/lax/Dockerfile
```
# Find eligible builder and runner images on Docker Hub. We use Ubuntu/Debian
# instead of Alpine to avoid DNS resolution issues in production.
#
# https://hub.docker.com/r/hexpm/elixir/tags?page=1&name=ubuntu
# https://hub.docker.com/_/ubuntu?tab=tags
#
# This file is based on these images:
#
#   - https://hub.docker.com/r/hexpm/elixir/tags - for the build image
#   - https://hub.docker.com/_/debian?tab=tags&page=1&name=bullseye-20240130-slim - for the release image
#   - https://pkgs.org/ - resource for finding needed packages
#   - Ex: hexpm/elixir:1.16.1-erlang-26.2.1-debian-bullseye-20240130-slim
#
ARG ELIXIR_VERSION=1.16.1
ARG OTP_VERSION=26.2.1
ARG DEBIAN_VERSION=bullseye-20240130-slim

ARG BUILDER_IMAGE="hexpm/elixir:${ELIXIR_VERSION}-erlang-${OTP_VERSION}-debian-${DEBIAN_VERSION}"
ARG RUNNER_IMAGE="debian:${DEBIAN_VERSION}"

FROM ${BUILDER_IMAGE} as builder

# install build dependencies
RUN apt-get update -y && apt-get install -y build-essential git \
    && apt-get clean && rm -f /var/lib/apt/lists/*_*

# prepare build dir
WORKDIR /app

# install hex + rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# set build ENV
ENV MIX_ENV="prod"

# install mix dependencies
COPY mix.exs mix.lock ./
RUN mix deps.get --only $MIX_ENV
RUN mkdir config

# copy compile-time config files before we compile dependencies
# to ensure any relevant config change will trigger the dependencies
# to be re-compiled.
COPY config/config.exs config/${MIX_ENV}.exs config/
RUN mix deps.compile

COPY priv priv

COPY lib lib

COPY assets assets

COPY secret secret

# compile assets
RUN mix assets.deploy

# Compile the release
RUN mix compile

# Changes to config/runtime.exs don't require recompiling the code
COPY config/runtime.exs config/

COPY rel rel
RUN mix release

# start a new build stage so that the final image will only contain
# the compiled release and other runtime necessities
FROM ${RUNNER_IMAGE}

RUN apt-get update -y && \
  apt-get install -y libstdc++6 openssl libncurses5 locales ca-certificates \
  && apt-get clean && rm -f /var/lib/apt/lists/*_*

# Set the locale
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

WORKDIR "/app"
RUN chown nobody /app

# set runner ENV
ENV MIX_ENV="prod"

# Only copy the final release and secrets from the build stage
COPY --from=builder --chown=nobody:root /app/_build/${MIX_ENV}/rel/lax ./
COPY --from=builder --chown=nobody:root /app/secret secret

USER nobody

# If using an environment that doesn't automatically reap zombie processes, it is
# advised to add an init process such as tini via `apt-get install`
# above and adding an entrypoint. See https://github.com/krallin/tini for details
# ENTRYPOINT ["/tini", "--"]

CMD ["/app/bin/server"]

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/gettext/en/LC_MESSAGES/errors.po
```po
## `msgid`s in this file come from POT (.pot) files.
##
## Do not add, change, or remove `msgid`s manually here as
## they're tied to the ones in the corresponding POT file
## (with the same domain).
##
## Use `mix gettext.extract --merge` or `mix gettext.merge`
## to merge POT files into PO files.
msgid ""
msgstr ""
"Language: en\n"

## From Ecto.Changeset.cast/4
msgid "can't be blank"
msgstr ""

## From Ecto.Changeset.unique_constraint/3
msgid "has already been taken"
msgstr ""

## From Ecto.Changeset.put_change/3
msgid "is invalid"
msgstr ""

## From Ecto.Changeset.validate_acceptance/3
msgid "must be accepted"
msgstr ""

## From Ecto.Changeset.validate_format/3
msgid "has invalid format"
msgstr ""

## From Ecto.Changeset.validate_subset/3
msgid "has an invalid entry"
msgstr ""

## From Ecto.Changeset.validate_exclusion/3
msgid "is reserved"
msgstr ""

## From Ecto.Changeset.validate_confirmation/3
msgid "does not match confirmation"
msgstr ""

## From Ecto.Changeset.no_assoc_constraint/3
msgid "is still associated with this entry"
msgstr ""

msgid "are still associated with this entry"
msgstr ""

## From Ecto.Changeset.validate_length/3
msgid "should have %{count} item(s)"
msgid_plural "should have %{count} item(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be %{count} character(s)"
msgid_plural "should be %{count} character(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be %{count} byte(s)"
msgid_plural "should be %{count} byte(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should have at least %{count} item(s)"
msgid_plural "should have at least %{count} item(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be at least %{count} character(s)"
msgid_plural "should be at least %{count} character(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be at least %{count} byte(s)"
msgid_plural "should be at least %{count} byte(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should have at most %{count} item(s)"
msgid_plural "should have at most %{count} item(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be at most %{count} character(s)"
msgid_plural "should be at most %{count} character(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be at most %{count} byte(s)"
msgid_plural "should be at most %{count} byte(s)"
msgstr[0] ""
msgstr[1] ""

## From Ecto.Changeset.validate_number/3
msgid "must be less than %{number}"
msgstr ""

msgid "must be greater than %{number}"
msgstr ""

msgid "must be less than or equal to %{number}"
msgstr ""

msgid "must be greater than or equal to %{number}"
msgstr ""

msgid "must be equal to %{number}"
msgstr ""

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/gettext/errors.pot
```pot
## This is a PO Template file.
##
## `msgid`s here are often extracted from source code.
## Add new translations manually only if they're dynamic
## translations that can't be statically extracted.
##
## Run `mix gettext.extract` to bring this file up to
## date. Leave `msgstr`s empty as changing them here has no
## effect: edit them in PO (`.po`) files instead.
## From Ecto.Changeset.cast/4
msgid "can't be blank"
msgstr ""

## From Ecto.Changeset.unique_constraint/3
msgid "has already been taken"
msgstr ""

## From Ecto.Changeset.put_change/3
msgid "is invalid"
msgstr ""

## From Ecto.Changeset.validate_acceptance/3
msgid "must be accepted"
msgstr ""

## From Ecto.Changeset.validate_format/3
msgid "has invalid format"
msgstr ""

## From Ecto.Changeset.validate_subset/3
msgid "has an invalid entry"
msgstr ""

## From Ecto.Changeset.validate_exclusion/3
msgid "is reserved"
msgstr ""

## From Ecto.Changeset.validate_confirmation/3
msgid "does not match confirmation"
msgstr ""

## From Ecto.Changeset.no_assoc_constraint/3
msgid "is still associated with this entry"
msgstr ""

msgid "are still associated with this entry"
msgstr ""

## From Ecto.Changeset.validate_length/3
msgid "should have %{count} item(s)"
msgid_plural "should have %{count} item(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be %{count} character(s)"
msgid_plural "should be %{count} character(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be %{count} byte(s)"
msgid_plural "should be %{count} byte(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should have at least %{count} item(s)"
msgid_plural "should have at least %{count} item(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be at least %{count} character(s)"
msgid_plural "should be at least %{count} character(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be at least %{count} byte(s)"
msgid_plural "should be at least %{count} byte(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should have at most %{count} item(s)"
msgid_plural "should have at most %{count} item(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be at most %{count} character(s)"
msgid_plural "should be at most %{count} character(s)"
msgstr[0] ""
msgstr[1] ""

msgid "should be at most %{count} byte(s)"
msgid_plural "should be at most %{count} byte(s)"
msgstr[0] ""
msgstr[1] ""

## From Ecto.Changeset.validate_number/3
msgid "must be less than %{number}"
msgstr ""

msgid "must be greater than %{number}"
msgstr ""

msgid "must be less than or equal to %{number}"
msgstr ""

msgid "must be greater than or equal to %{number}"
msgstr ""

msgid "must be equal to %{number}"
msgstr ""

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/repo/migrations/.formatter.exs
```exs
[
  import_deps: [:ecto_sql],
  inputs: ["*.exs"]
]

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/repo/migrations/20240607212620_create_users_auth_tables.exs
```exs
defmodule Lax.Repo.Migrations.CreateUsersAuthTables do
  use Ecto.Migration

  def change do
    execute "CREATE EXTENSION IF NOT EXISTS citext", ""

    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :email, :citext, null: false
      add :username, :citext, null: false
      add :hashed_password, :string, null: false
      add :time_zone, :string, null: false
      add :display_color, :string, null: false
      add :ui_settings, :map, default: %{}
      add :confirmed_at, :naive_datetime
      timestamps(type: :utc_datetime)
    end

    create unique_index(:users, [:email])

    create table(:users_tokens, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :user_id, references(:users, type: :binary_id, on_delete: :delete_all), null: false
      add :token, :binary, null: false
      add :context, :string, null: false
      add :sent_to, :string
      timestamps(updated_at: false)
    end

    create index(:users_tokens, [:user_id])
    create unique_index(:users_tokens, [:context, :token])
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/repo/migrations/20240608024632_create_channels.exs
```exs
defmodule Lax.Repo.Migrations.CreateChannels do
  use Ecto.Migration

  def change do
    create table(:channels, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string, null: true
      add :type, :string, null: false

      timestamps()
    end

    create unique_index(:channels, [:name])

    create table(:default_channels, primary_key: false) do
      add :channel_id, references(:channels, type: :binary_id, on_delete: :delete_all),
        primary_key: true
    end

    create table(:channels_users, primary_key: false) do
      add :channel_id, references(:channels, type: :binary_id), primary_key: true
      add :user_id, references(:users, type: :binary_id), primary_key: true
      add :last_viewed_at, :utc_datetime, null: true

      timestamps(updated_at: false)
    end

    create index(:channels_users, [:channel_id])
    create index(:channels_users, [:user_id])

    create table(:messages, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :text, :text, null: false
      add :channel_id, references(:channels, type: :binary_id), null: false
      add :sent_by_user_id, references(:users, type: :binary_id), null: false

      timestamps()
    end

    create index(:messages, [:channel_id])
    create index(:messages, [:sent_by_user_id])
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/repo/migrations/20240609014931_alter_messages_timestamps_type.exs
```exs
defmodule Lax.Repo.Migrations.AlterMessagesTimestampsType do
  use Ecto.Migration

  def change do
    alter table(:messages) do
      modify :inserted_at, :naive_datetime_usec, null: false, from: {:naive_datetime, null: false}
      modify :updated_at, :naive_datetime_usec, null: false, from: {:naive_datetime, null: false}
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/repo/migrations/20240609162305_alter_channels_users_modify_last_viewed_at.exs
```exs
defmodule Lax.Repo.Migrations.AlterChannelsUsersModifyLastViewedAt do
  use Ecto.Migration

  def change do
    alter table(:channels_users) do
      modify :last_viewed_at, :naive_datetime_usec, null: true, from: {:utc_datetime, null: true}
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/repo/migrations/20240801125212_alter_users_add_apns_device_token.exs
```exs
defmodule Lax.Repo.Migrations.AlterUsersAddDeviceToken do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :apns_device_token, {:array, :string}, default: [], null: false
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/repo/migrations/20240823131324_alter_users_add_deleted_at.exs
```exs
defmodule Lax.Repo.Migrations.AlterUsersAddDeletedAt do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :deleted_at, :naive_datetime, null: true
    end
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/repo/migrations/20240827164445_create_link_previews.exs
```exs
defmodule Lax.Repo.Migrations.CreateLinkPreviews do
  use Ecto.Migration

  def change() do
    create table(:link_previews, primary_key: false) do
      add :link, :string, null: false, primary_key: true
      add :resource_id, :binary_id, null: false, primary_key: true

      add :page_title, :string
      add :page_description, :string
      add :page_site_name, :string
      add :page_url, :string
      add :page_icon_url, :string
      add :page_image_url, :string

      add :state, :string, null: false
    end

    create index(:link_previews, [:link])
    create index(:link_previews, [:resource_id])
  end
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/repo/seeds.exs
```exs
# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Lax.Repo.insert!(%Lax.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

unless Lax.Repo.exists?(Lax.Channels.DefaultChannel) do
  {:ok, channel} = Lax.Channels.create(%{name: "general"})
  Lax.Repo.insert!(%Lax.Channels.DefaultChannel{channel: channel})

  {:ok, channel} = Lax.Channels.create(%{name: "random"})
  Lax.Repo.insert!(%Lax.Channels.DefaultChannel{channel: channel})
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/static/images/lax-app-store-qr.png
```png
[Binary file]
```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/static/images/logo-lax-512.png
```png
[Binary file]
```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/static/images/logo.svg
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 71 48" fill="currentColor" aria-hidden="true">
  <path
    d="m26.371 33.477-.552-.1c-3.92-.729-6.397-3.1-7.57-6.829-.733-2.324.597-4.035 3.035-4.148 1.995-.092 3.362 1.055 4.57 2.39 1.557 1.72 2.984 3.558 4.514 5.305 2.202 2.515 4.797 4.134 8.347 3.634 3.183-.448 5.958-1.725 8.371-3.828.363-.316.761-.592 1.144-.886l-.241-.284c-2.027.63-4.093.841-6.205.735-3.195-.16-6.24-.828-8.964-2.582-2.486-1.601-4.319-3.746-5.19-6.611-.704-2.315.736-3.934 3.135-3.6.948.133 1.746.56 2.463 1.165.583.493 1.143 1.015 1.738 1.493 2.8 2.25 6.712 2.375 10.265-.068-5.842-.026-9.817-3.24-13.308-7.313-1.366-1.594-2.7-3.216-4.095-4.785-2.698-3.036-5.692-5.71-9.79-6.623C12.8-.623 7.745.14 2.893 2.361 1.926 2.804.997 3.319 0 4.149c.494 0 .763.006 1.032 0 2.446-.064 4.28 1.023 5.602 3.024.962 1.457 1.415 3.104 1.761 4.798.513 2.515.247 5.078.544 7.605.761 6.494 4.08 11.026 10.26 13.346 2.267.852 4.591 1.135 7.172.555ZM10.751 3.852c-.976.246-1.756-.148-2.56-.962 1.377-.343 2.592-.476 3.897-.528-.107.848-.607 1.306-1.336 1.49Zm32.002 37.924c-.085-.626-.62-.901-1.04-1.228-1.857-1.446-4.03-1.958-6.333-2-1.375-.026-2.735-.128-4.031-.61-.595-.22-1.26-.505-1.244-1.272.015-.78.693-1 1.31-1.184.505-.15 1.026-.247 1.6-.382-1.46-.936-2.886-1.065-4.787-.3-2.993 1.202-5.943 1.06-8.926-.017-1.684-.608-3.179-1.563-4.735-2.408l-.077.057c1.29 2.115 3.034 3.817 5.004 5.271 3.793 2.8 7.936 4.471 12.784 3.73A66.714 66.714 0 0 1 37 40.877c1.98-.16 3.866.398 5.753.899Zm-9.14-30.345c-.105-.076-.206-.266-.42-.069 1.745 2.36 3.985 4.098 6.683 5.193 4.354 1.767 8.773 2.07 13.293.51 3.51-1.21 6.033-.028 7.343 3.38.19-3.955-2.137-6.837-5.843-7.401-2.084-.318-4.01.373-5.962.94-5.434 1.575-10.485.798-15.094-2.553Zm27.085 15.425c.708.059 1.416.123 2.124.185-1.6-1.405-3.55-1.517-5.523-1.404-3.003.17-5.167 1.903-7.14 3.972-1.739 1.824-3.31 3.87-5.903 4.604.043.078.054.117.066.117.35.005.699.021 1.047.005 3.768-.17 7.317-.965 10.14-3.7.89-.86 1.685-1.817 2.544-2.71.716-.746 1.584-1.159 2.645-1.07Zm-8.753-4.67c-2.812.246-5.254 1.409-7.548 2.943-1.766 1.18-3.654 1.738-5.776 1.37-.374-.066-.75-.114-1.124-.17l-.013.156c.135.07.265.151.405.207.354.14.702.308 1.07.395 4.083.971 7.992.474 11.516-1.803 2.221-1.435 4.521-1.707 7.013-1.336.252.038.503.083.756.107.234.022.479.255.795.003-2.179-1.574-4.526-2.096-7.094-1.872Zm-10.049-9.544c1.475.051 2.943-.142 4.486-1.059-.452.04-.643.04-.827.076-2.126.424-4.033-.04-5.733-1.383-.623-.493-1.257-.974-1.889-1.457-2.503-1.914-5.374-2.555-8.514-2.5.05.154.054.26.108.315 3.417 3.455 7.371 5.836 12.369 6.008Zm24.727 17.731c-2.114-2.097-4.952-2.367-7.578-.537 1.738.078 3.043.632 4.101 1.728a13 13 0 0 0 1.182 1.106c1.6 1.29 4.311 1.352 5.896.155-1.861-.726-1.861-.726-3.601-2.452Zm-21.058 16.06c-1.858-3.46-4.981-4.24-8.59-4.008a9.667 9.667 0 0 1 2.977 1.39c.84.586 1.547 1.311 2.243 2.055 1.38 1.473 3.534 2.376 4.962 2.07-.656-.412-1.238-.848-1.592-1.507Zl-.006.006-.036-.004.021.018.012.053Za.127.127 0 0 0 .015.043c.005.008.038 0 .058-.002Zl-.008.01.005.026.024.014Z"
    fill="#FD4F00"
  />
</svg>

```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/static/favicon.ico
```ico
         h  6          (    00     h&  Ц  (                                     

~		љ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		љ

~		љ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		љ		џ		џ		џ		џ		џџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џvuuџ§§§џ§§§џЭЭЭџџ~~џџ|{{џџ		џ		џ		џ		џ		џ		џџђёёџџџџџџџџџџџџџџџџџџџџџџџџџќќќџџ		џ		џ		џ		џ		џ		џ(''џџџџџџџџџАААџЊЉЉџЭЭЭџиззџБААџDBBџ		џ		џ		џ		џ		џ		џ		џ

џѓѓѓџџџџџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џАЏЏџџџџџсррџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џZYYџџџџџџџџџFEEџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџяяяџџџџџЃЃЃџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџџџџџѓѓѓџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џJHHџџџџџџџџџeddџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ

џъъъџПППџ)''џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		љ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		љ

~		љ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		љ

~                                                                (       @                                 

|		ч		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ч

|   

|		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ

|		ч		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ч		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџ755џ200џџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџјјјџџџџџџџџџјјјџРППџwvvџ877џ#""џ
џ		џ

џ,**џџ
џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џEDDџўўўџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџњњњџыыыџѕѕѕџџџџџџџџџЩЩЩџ&$$џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џЪЩЩџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ866џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ)''џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџђђђџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џIHHџџџџџџџџџџџџџџџџџўўўџќќќџџџџџџџџџџџџџџџџџџџџџџџџџџџџџњњњџДГГџFDDџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џB@@џџџџџџџџџџџџџџџџџЙЙЙџ

џ422џvuuџџЃЂЂџЌЋЋџЕДДџџ433џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџ§§§џџџџџџџџџџџџџуттџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џвббџџџџџџџџџџџџџџџџџ;::џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџџџџџџџџџџџџџџџџџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ@??џџџџџџџџџџџџџџџџџяяяџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ

џдддџџџџџџџџџџџџџџџџџ[ZZџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ}||џџџџџџџџџџџџџџџџџЇІІџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ)''џ§§§џџџџџџџџџџџџџњњњџ&$$џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џУУУџџџџџџџџџџџџџџџџџonnџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џljjџџџџџџџџџџџџџџџџџЯЮЮџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџјјјџџџџџџџџџџџџџџџџџ@>>џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џВББџџџџџџџџџџџџџџџџџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ^]]џџџџџџџџџџџџџџџџџтттџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџњњњџџџџџџџџџџџџџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џТТТџюююџџa``џ

џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ч		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ч

|		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ

|   

|		ч		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ч

|                                                                                                                                                                                                                                                                   (   0   `                                  \		Ц		ї		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ї		Ч\    				ј		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ї		\		ї		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ј\		Ч		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		Ц		ї		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ї		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџ?==џWVVџQOOџ211џ

џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџ}{{џьььџџџџџџџџџџџџџџџџџэээџЉЉЉџ\[[џ-++џџџџ

џ		џ		џ		џџџџ
џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџ{zzџїїїџџџџџџџџџџџџџџџџџџџџџџџџџџџџџўўўџуууџИИИџІІІџџџxwwџpooџwvvџџЉЈЈџџџ755џ

џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ%##џвввџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџўўўџњњњџјјјџњњњџўўўџџџџџџџџџќќќџхффџSRRџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџlkkџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџыыыџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџќќќџ!џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џKJJџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџрррџ

џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џonnџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ§§§џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџќќќџыыыџСССџGFFџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џtssџџџџџџџџџџџџџџџџџџџџџџџџџђђђџџџџдддџїїїџџџџџџџџџџџџџџџџџџџџџџџџџџџџџшшшџџIHHџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ_]]џџџџџџџџџџџџџџџџџџџџџџџџџщщщџECCџ

џџ&$$џ200џGFFџ[YYџihhџsrrџzyyџџ^\\џ1//џџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ311џўўўџџџџџџџџџџџџџџџџџџџџџђђђџ_^^џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџфффџџџџџџџџџџџџџџџџџџџџџ§§§џџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џЂЁЁџџџџџџџџџџџџџџџџџџџџџџџџџФУУџ џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џVTTџњњњџџџџџџџџџџџџџџџџџџџџџїїїџA??џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ&$$џеееџџџџџџџџџџџџџџџџџџџџџџџџџЁЁЁџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџЏЎЎџџџџџџџџџџџџџџџџџџџџџџџџџѕѕѕџ&%%џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џlkkџіііџџџџџџџџџџџџџџџџџџџџџџџџџ~~џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ.,,џсссџџџџџџџџџџџџџџџџџџџџџџџџџНННџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ
џЎ­­џџџџџџџџџџџџџџџџџџџџџџџџџшччџDBBџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џSQQџўўўџџџџџџџџџџџџџџџџџџџџџќќќџџ

џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџнннџџџџџџџџџџџџџџџџџџџџџџџџџХХХџ!џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџџџџџџџџџџџџџџџџџџџџџџџџџђђђџ755џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ533џёёёџџџџџџџџџџџџџџџџџџџџџџџџџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџЙЙЙџџџџџџџџџџџџџџџџџџџџџџџџџьььџ#!!џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ
џ~~џћћћџџџџџџџџџџџџџџџџџџџџџџџџџ~||џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џFDDџъъъџџџџџџџџџџџџџџџџџџџџџџџџџбааџџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџЪЪЪџџџџџџџџџџџџџџџџџџџџџџџџџяююџTSSџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџџџџџџџџџџџџџџџџџџџџџџџџџєєєџeddџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ0..џќќќџџџџџџџџџџџџџџџџџџџџџгггџ+))џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ

џвввџџџџџџџџџџџџџєєєџаааџKJJџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџџџџџбааџrqqџ755џ$##џ

џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џџ322џџ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ї		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ї		Ц		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		Ч\		ј		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ї\				ї		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ј		    \		Ч		ї		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		џ		ї		Ц\                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
```

File: /Users/mhostetler/Source/ElixirMentor/lax/priv/static/robots.txt
```txt
# See https://www.robotstxt.org/robotstxt.html for documentation on how to use the robots.txt file
#
# To ban all spiders from the entire site uncomment the next two lines:
# User-agent: *
# Disallow: /

```

File: /Users/mhostetler/Source/ElixirMentor/lax/config/config.exs
```exs
# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase

config :lax,
  ecto_repos: [Lax.Repo],
  generators: [timestamp_type: :utc_datetime, binary_id: true]

# Configures the endpoint
config :lax, LaxWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Bandit.PhoenixAdapter,
  render_errors: [
    formats: [html: LaxWeb.ErrorHTML, json: LaxWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: Lax.PubSub,
  live_view: [signing_salt: "KfGil+yA"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :lax, Lax.Mailer, adapter: Swoosh.Adapters.Local

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.17.11",
  lax: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configure tailwind (the version is required)
config :tailwind,
  version: "3.4.0",
  lax: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../assets", __DIR__)
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :live_view_native,
  plugins: [
    LiveViewNative.SwiftUI
  ]

config :mime, :types, %{
  "text/swiftui" => ["swiftui"],
  "text/styles" => ["styles"]
}

config :phoenix_template, :format_encoders, swiftui: Phoenix.HTML.Engine

config :phoenix, :template_engines, neex: LiveViewNative.Engine

config :live_view_native_stylesheet,
  content: [
    swiftui: [
      "lib/**/*swiftui*"
    ]
  ],
  output: "priv/static/assets"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"

```

File: /Users/mhostetler/Source/ElixirMentor/lax/config/dev.exs
```exs
import Config

# Configure your database
config :lax, Lax.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "lax_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we can use it
# to bundle .js and .css sources.
config :lax, LaxWeb.Endpoint,
  # Binding to loopback ipv4 address prevents access from other machines.
  # Change to `ip: {0, 0, 0, 0}` to allow access from other machines.
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "NGtwH/DC1oyKrp3SpPg4VaH6kWtJfuiL1L//eR1T6/LzXcLqmqYQEyx2ZbVL/1jS",
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:lax, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:lax, ~w(--watch)]}
  ]

# ## SSL Support
#
# In order to use HTTPS in development, a self-signed
# certificate can be generated by running the following
# Mix task:
#
#     mix phx.gen.cert
#
# Run `mix help phx.gen.cert` for more information.
#
# The `http:` config above can be replaced with:
#
#     https: [
#       port: 4001,
#       cipher_suite: :strong,
#       keyfile: "priv/cert/selfsigned_key.pem",
#       certfile: "priv/cert/selfsigned.pem"
#     ],
#
# If desired, both `http:` and `https:` keys can be
# configured to run both http and https servers on
# different ports.

# Watch static and templates for browser reloading.
config :lax, LaxWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/(?!uploads/).*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/lax_web/(controllers|live|components|styles)/.*(ex|heex|neex)$"
    ]
  ]

# Enable dev routes for dashboard and mailbox
config :lax, dev_routes: true

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Initialize plugs at runtime for faster development compilation
config :phoenix, :plug_init_mode, :runtime

config :phoenix_live_view,
  # Include HEEx debug annotations as HTML comments in rendered markup
  debug_heex_annotations: true,
  # Enable helpful, but potentially expensive runtime checks
  enable_expensive_runtime_checks: true

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

config :live_view_native_stylesheet,
  annotations: true,
  pretty: true

## Uncomment to enable push notifications in dev

# config :pigeon, :apns,
#   apns_default: %{
#     cert: "secret/apns_laxso/cert.pem",
#     key: "secret/apns_laxso/key_unencrypted.pem",
#     mode: :dev
#   }

```

File: /Users/mhostetler/Source/ElixirMentor/lax/config/prod.exs
```exs
import Config

# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix assets.deploy` task,
# which you should run after static files are built and
# before starting your production server.
config :lax, LaxWeb.Endpoint, cache_static_manifest: "priv/static/cache_manifest.json"

# Configures Swoosh API Client
config :swoosh, api_client: Swoosh.ApiClient.Finch, finch_name: Lax.Finch

# Disable Swoosh Local Memory Storage
config :swoosh, local: false

# Do not print debug messages in production
config :logger, level: :info

# Runtime production configuration, including reading
# of environment variables, is done on config/runtime.exs.

```

File: /Users/mhostetler/Source/ElixirMentor/lax/config/runtime.exs
```exs
import Config

# config/runtime.exs is executed for all environments, including
# during releases. It is executed after compilation and before the
# system starts, so it is typically used to load production configuration
# and secrets from environment variables or elsewhere. Do not define
# any compile-time configuration in here, as it won't be applied.
# The block below contains prod specific runtime configuration.

# ## Using releases
#
# If you use `mix release`, you need to explicitly enable the server
# by passing the PHX_SERVER=true when you start it:
#
#     PHX_SERVER=true bin/lax start
#
# Alternatively, you can use `mix phx.gen.release` to generate a `bin/server`
# script that automatically sets the env var above.
if System.get_env("PHX_SERVER") do
  config :lax, LaxWeb.Endpoint, server: true
end

if config_env() == :prod do
  database_url =
    System.get_env("DATABASE_URL") ||
      raise """
      environment variable DATABASE_URL is missing.
      For example: ecto://USER:PASS@HOST/DATABASE
      """

  maybe_ipv6 = if System.get_env("ECTO_IPV6") in ~w(true 1), do: [:inet6], else: []

  config :lax, Lax.Repo,
    # ssl: true,
    url: database_url,
    pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
    socket_options: maybe_ipv6

  # The secret key base is used to sign/encrypt cookies and other secrets.
  # A default value is used in config/dev.exs and config/test.exs but you
  # want to use a different value for prod and you most likely don't want
  # to check this value into version control, so we use an environment
  # variable instead.
  secret_key_base =
    System.get_env("SECRET_KEY_BASE") ||
      raise """
      environment variable SECRET_KEY_BASE is missing.
      You can generate one by calling: mix phx.gen.secret
      """

  host = System.get_env("PHX_HOST") || "example.com"
  port = String.to_integer(System.get_env("PORT") || "4000")

  config :lax, :dns_cluster_query, System.get_env("DNS_CLUSTER_QUERY")

  config :lax, LaxWeb.Endpoint,
    url: [host: host, port: 443, scheme: "https"],
    http: [
      # Enable IPv6 and bind on all interfaces.
      # Set it to  {0, 0, 0, 0, 0, 0, 0, 1} for local network only access.
      # See the documentation on https://hexdocs.pm/bandit/Bandit.html#t:options/0
      # for details about using IPv6 vs IPv4 and loopback vs public addresses.
      ip: {0, 0, 0, 0, 0, 0, 0, 0},
      port: port
    ],
    secret_key_base: secret_key_base

  config :pigeon, :apns,
    apns_default: %{
      cert: File.read!("/app/secret/apns_laxso/cert.pem"),
      key: File.read!("/app/secret/apns_laxso/key_unencrypted.pem"),
      mode: :prod
    }

  # ## SSL Support
  #
  # To get SSL working, you will need to add the `https` key
  # to your endpoint configuration:
  #
  #     config :lax, LaxWeb.Endpoint,
  #       https: [
  #         ...,
  #         port: 443,
  #         cipher_suite: :strong,
  #         keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
  #         certfile: System.get_env("SOME_APP_SSL_CERT_PATH")
  #       ]
  #
  # The `cipher_suite` is set to `:strong` to support only the
  # latest and more secure SSL ciphers. This means old browsers
  # and clients may not be supported. You can set it to
  # `:compatible` for wider support.
  #
  # `:keyfile` and `:certfile` expect an absolute path to the key
  # and cert in disk or a relative path inside priv, for example
  # "priv/ssl/server.key". For all supported SSL configuration
  # options, see https://hexdocs.pm/plug/Plug.SSL.html#configure/1
  #
  # We also recommend setting `force_ssl` in your config/prod.exs,
  # ensuring no data is ever sent via http, always redirecting to https:
  #
  #     config :lax, LaxWeb.Endpoint,
  #       force_ssl: [hsts: true]
  #
  # Check `Plug.SSL` for all available options in `force_ssl`.

  # ## Configuring the mailer
  #
  # In production you need to configure the mailer to use a different adapter.
  # Also, you may need to configure the Swoosh API client of your choice if you
  # are not using SMTP. Here is an example of the configuration:
  #
  #     config :lax, Lax.Mailer,
  #       adapter: Swoosh.Adapters.Mailgun,
  #       api_key: System.get_env("MAILGUN_API_KEY"),
  #       domain: System.get_env("MAILGUN_DOMAIN")
  #
  # For this example you need include a HTTP client required by Swoosh API client.
  # Swoosh supports Hackney and Finch out of the box:
  #
  #     config :swoosh, :api_client, Swoosh.ApiClient.Hackney
  #
  # See https://hexdocs.pm/swoosh/Swoosh.html#module-installation for details.
end

```

File: /Users/mhostetler/Source/ElixirMentor/lax/config/test.exs
```exs
import Config

# Only in tests, remove the complexity from the password hashing algorithm
config :bcrypt_elixir, :log_rounds, 1

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :lax, Lax.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "lax_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: System.schedulers_online() * 2

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lax, LaxWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "CyxnTpIFMeVaNflb6BPgoXIo3O0oZSV/PrRnUxr5KlZ9Vfy6S6buR6JXoQMRcd/m",
  server: false

# In test we don't send emails.
config :lax, Lax.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

config :phoenix_live_view,
  # Enable helpful, but potentially expensive runtime checks
  enable_expensive_runtime_checks: true

```

File: /Users/mhostetler/Source/ElixirMentor/lax/assets/css/app.css
```css
@import "tailwindcss/base";
@import "tailwindcss/components";
@import "tailwindcss/utilities";

/* This file is for your main application CSS */

.resize-container {
  position: relative;
}

.resize-container::after {
  @apply bg-sky-500;
  content: '';
  position: absolute;
  top: 0px;
  bottom: 0px;
  width: 2px;
  opacity: var(--resize-indicator-opacity, 0);
  transition: opacity 150ms;
  cursor: col-resize;
}

.resize-container-left::after {
  left: 0px;
}

.resize-container-right::after {
  right: 0px;
}

@layer utilities {

  /* Hide scrollbar for Chrome, Safari, and Opera */
  .no-scrollbar::-webkit-scrollbar {
    display: none;
  }

  /* Hide scrollbar for IE, Edge, and Firefox */
  .no-scrollbar {
    -ms-overflow-style: none;
    /* IE and Edge */
    scrollbar-width: none;
    /* Firefox */
  }
}
```

File: /Users/mhostetler/Source/ElixirMentor/lax/assets/js/hooks/ControlTextarea.js
```js
const ControlTextarea = {
  mounted() {
    this.el.addEventListener("keydown", this.onKeydown.bind(this));
    this.el.addEventListener("input", this.onInput.bind(this));
  },
  updated() {
    if (this.el) {
      this.el.rows = this.el.value.split("\n").length;
    }
  },
  onKeydown(event) {
    if (event.key === "Enter") {
      if (event.shiftKey) {
        if (this.el && this.el.rows) {
          this.el.rows = this.el.rows + 1;
        }
      } else {
        event.preventDefault();

        const form = event.target.form;
        const submitButton = form && form.querySelector('button[type="submit"]');

        if (submitButton) {
          // remove focus from input so phoenix will overwrite the value
          // https://github.com/phoenixframework/phoenix_live_view/issues/624#issuecomment-585230754
          submitButton.focus();
          submitButton.click();

          // refocus on input after timeout
          setTimeout(() => {
            this.el.value = "";
            event.target.focus();
          });
        }
      }
    }
  },
  onInput(event) {
    const rows = event.target.value.split("\n").length;
    if (this.el) {
      this.el.rows = rows;
    }
  },
};

export default ControlTextarea;

```

File: /Users/mhostetler/Source/ElixirMentor/lax/assets/js/hooks/ResizeContainer.js
```js
const BORDER_SIZE = 4;

// https://stackoverflow.com/questions/26233180/resize-a-div-on-border-drag-and-drop-without-adding-extra-markup
const ResizeContainer = {
  mounted() {
    this.pushResize = debounce(this.pushResize.bind(this), 100);
    this.onDocumentMousemove = this.onDocumentMousemove.bind(this);
    this.onMouseup = this.onMouseup.bind(this);

    this.el.addEventListener("mousemove", this.onMousemove.bind(this));
    this.el.addEventListener("mouseleave", this.onMouseleave.bind(this));
    this.el.addEventListener("mousedown", this.onMousedown.bind(this));
  },

  destroyed() {
    // clean up global event listeners
    document.removeEventListener("mousemove", this.onDocumentMousemove, false);
    document.removeEventListener("mousemove", this.onDocumentMousemove, false);
  },

  pushResize(width) {
    this.pushEvent(this.el.getAttribute("phx-resize") || "resize", { width });
  },

  onMousemove(event) {
    // hover isn't supported for pseudo elements, so manually change opacity on mouseover
    if (this.detectInDragArea(event)) {
      this.el.style.setProperty('--resize-indicator-opacity', 1);
    } else {
      this.el.style.setProperty('--resize-indicator-opacity', 0);
    }
  },

  onMouseleave(event) {
    this.el.style.setProperty('--resize-indicator-opacity', 0);
  },

  onMousedown(event) {
    if (this.detectInDragArea(event)) {
      this.mouseX = event.x;

      document.body.classList.add("select-none");

      document.addEventListener("mousemove", this.onDocumentMousemove, false);
      document.addEventListener("mouseup", this.onMouseup, false);
    }
  },

  onDocumentMousemove(event) {
    const isLeft = this.el.classList.contains("resize-container-left");
    const dx = isLeft ? event.x - this.mouseX : this.mouseX - event.x;

    this.mouseX = event.x;

    let width = this.el.getBoundingClientRect().width - dx;
    width = Math.min(width, parseInt(this.el.dataset["maxWidth"]))
    width = Math.max(width, parseInt(this.el.dataset["minWidth"]))
    width = Math.round(width)

    this.el.style.width = `${width}px`;
    this.pushResize(width);
  },

  onMouseup(event) {
    // re-enable global text selection
    document.body.classList.remove("select-none");

    // clean up global event listeners
    document.removeEventListener("mousemove", this.onDocumentMousemove, false);
    document.removeEventListener("mouseup", this.onDocumentMousemove, false);
  },

  detectInDragArea(event) {
    if (this.el.classList.contains("resize-container-left")) {
      return event.offsetX < BORDER_SIZE;
    }

    if (this.el.classList.contains("resize-container-right")) {
      return this.el.getBoundingClientRect().width - event.offsetX < BORDER_SIZE;
    }

    throw new Error("Missing container class");
  }
}

function debounce(func, wait) {
  let timeout;
  return function executedFunction(...args) {
    const later = () => {
      clearTimeout(timeout);
      func(...args);
    };
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
  };
}


export default ResizeContainer;

```

File: /Users/mhostetler/Source/ElixirMentor/lax/assets/js/hooks/SetTimeZoneValue.js
```js
const SetTimeZoneValue = {
  mounted() {
    this.el.value = Intl.DateTimeFormat().resolvedOptions().timeZone;
  }
};

export default SetTimeZoneValue;

```

File: /Users/mhostetler/Source/ElixirMentor/lax/assets/js/app.js
```js
// If you want to use Phoenix channels, run `mix help phx.gen.channel`
// to get started and then uncomment the line below.
// import "./user_socket.js"

// You can include dependencies in two ways.
//
// The simplest option is to put them in assets/vendor and
// import them using relative paths:
//
//     import "../vendor/some-package.js"
//
// Alternatively, you can `npm install some-package --prefix assets` and import
// them using a path starting with the package name:
//
//     import "some-package"
//

// Include phoenix_html to handle method=PUT/DELETE in forms and buttons.
import "phoenix_html"
// Establish Phoenix Socket and LiveView configuration.
import { Socket } from "phoenix"
import { LiveSocket } from "phoenix_live_view"
import topbar from "../vendor/topbar"
import ControlTextarea from "./hooks/ControlTextarea"
import ResizeContainer from "./hooks/ResizeContainer"
import SetTimeZoneValue from "./hooks/SetTimeZoneValue"

const hooks = {
  ControlTextarea,
  ResizeContainer,
  SetTimeZoneValue
}

let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content")
let liveSocket = new LiveSocket("/live", Socket, {
  hooks,
  longPollFallbackMs: 2500,
  params: { _csrf_token: csrfToken }
})

// Show progress bar on live navigation and form submits
topbar.config({ barColors: { 0: "#29d" }, shadowColor: "rgba(0, 0, 0, .3)" })
window.addEventListener("phx:page-loading-start", _info => topbar.show(300))
window.addEventListener("phx:page-loading-stop", _info => topbar.hide())

// connect if there are any LiveViews on the page
liveSocket.connect()

// expose liveSocket on window for web console debug logs and latency simulation:
// >> liveSocket.enableDebug()
// >> liveSocket.enableLatencySim(1000)  // enabled for duration of browser session
// >> liveSocket.disableLatencySim()
window.liveSocket = liveSocket


```

File: /Users/mhostetler/Source/ElixirMentor/lax/assets/tailwind.config.js
```js
// See the Tailwind configuration guide for advanced usage
// https://tailwindcss.com/docs/configuration

const plugin = require("tailwindcss/plugin")
const fs = require("fs")
const path = require("path")

module.exports = {
  content: [
    "./js/**/*.js",
    "../lib/lax_web.ex",
    "../lib/lax_web/**/*.*ex"
  ],
  theme: {
    extend: {
      colors: {
        brand: "#FD4F00",
      },
      fontSize: {
        "2xs": "0.6rem"
      }
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    // Allows prefixing tailwind classes with LiveView classes to add rules
    // only when LiveView classes are applied, for example:
    //
    //     <div class="phx-click-loading:animate-ping">
    //
    plugin(({addVariant}) => addVariant("phx-no-feedback", [".phx-no-feedback&", ".phx-no-feedback &"])),
    plugin(({addVariant}) => addVariant("phx-click-loading", [".phx-click-loading&", ".phx-click-loading &"])),
    plugin(({addVariant}) => addVariant("phx-submit-loading", [".phx-submit-loading&", ".phx-submit-loading &"])),
    plugin(({addVariant}) => addVariant("phx-change-loading", [".phx-change-loading&", ".phx-change-loading &"])),

    // Embeds Heroicons (https://heroicons.com) into your app.css bundle
    // See your `CoreComponents.icon/1` for more information.
    //
    plugin(function({matchComponents, theme}) {
      let iconsDir = path.join(__dirname, "../deps/heroicons/optimized")
      let values = {}
      let icons = [
        ["", "/24/outline"],
        ["-solid", "/24/solid"],
        ["-mini", "/20/solid"],
        ["-micro", "/16/solid"]
      ]
      icons.forEach(([suffix, dir]) => {
        fs.readdirSync(path.join(iconsDir, dir)).forEach(file => {
          let name = path.basename(file, ".svg") + suffix
          values[name] = {name, fullPath: path.join(iconsDir, dir, file)}
        })
      })
      matchComponents({
        "hero": ({name, fullPath}) => {
          let content = fs.readFileSync(fullPath).toString().replace(/\r?\n|\r/g, "")
          let size = theme("spacing.6")
          if (name.endsWith("-mini")) {
            size = theme("spacing.5")
          } else if (name.endsWith("-micro")) {
            size = theme("spacing.4")
          }
          return {
            [`--hero-${name}`]: `url('data:image/svg+xml;utf8,${content}')`,
            "-webkit-mask": `var(--hero-${name})`,
            "mask": `var(--hero-${name})`,
            "mask-repeat": "no-repeat",
            "background-color": "currentColor",
            "vertical-align": "middle",
            "display": "inline-block",
            "width": size,
            "height": size
          }
        }
      }, {values})
    })
  ]
}

```
</file_contents>
<meta prompt 1 = "[Architect]">
You are a senior software architect specializing in code design and implementation planning. Your role is to:

1. Analyze the requested changes and break them down into clear, actionable steps
2. Create a detailed implementation plan that includes:
   - Files that need to be modified
   - Specific code sections requiring changes
   - New functions, methods, or classes to be added
   - Dependencies or imports to be updated
   - Data structure modifications
   - Interface changes
   - Configuration updates

For each change:
- Describe the exact location in the code where changes are needed
- Explain the logic and reasoning behind each modification
- Provide example signatures, parameters, and return types
- Note any potential side effects or impacts on other parts of the codebase
- Highlight critical architectural decisions that need to be made

You may include short code snippets to illustrate specific patterns, signatures, or structures, but do not implement the full solution.

Focus solely on the technical implementation plan - exclude testing, validation, and deployment considerations unless they directly impact the architecture.

Please proceed with your analysis based on the following <user instrctions>
</meta prompt 1>
<user_instructions>
Give me an overview of the backend of this codebase - critique it and give me a prioritized list of impromvements to make
</user_instructions>
