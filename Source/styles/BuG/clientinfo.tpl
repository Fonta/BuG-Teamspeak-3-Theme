<!--
TeamSpeak 3 Client Infoframe Template
Copyright 2009-2015 (c) TeamSpeak Systems GmbH

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can 
also use %%?CLIENT_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to 
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

%%AVATAR_MAX_WIDTH%%500
%%AVATAR_MAX_HEIGHT%%256
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3

Replacable variables for clients:
CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_CUSTOM_NICK_NAME
CLIENT_COUNTRY_TOOLTIP
CLIENT_COUNTRY_IMAGE
CLIENT_ID
CLIENT_UNIQUE_ID
CLIENT_AWAY_MESSAGE
CLIENT_PLATFORM
CLIENT_VERSION
CLIENT_VERSION_SHORT
CLIENT_VERSION_STATE   [Alpha|Beta|Stable]
CLIENT_DESCRIPTION
CLIENT_ICON
CLIENT_TOTALCONNECTIONS
CLIENT_CREATED
CLIENT_LASTCONNECTED
CLIENT_CONNECTED_SINCE
CLIENT_FLAG_AVATAR
CLIENT_IGNORE_AVATAR
AVATAR_MAX_WIDTH
AVATAR_MAX_HEIGHT
CLIENT_TALK_REQUEST_TIME
CLIENT_TALK_REQUEST_MSG
CLIENT_VOLUME_MODIFIER
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_GROUP_ICON
CLIENT_DATABASE_ID
CLIENT_SERVER_SHOW_MAX_GROUPS
PLUGIN_INFO_DATA
-->

<table width="100%" class="Infoframe_table">
	<tr>
		<td class="Infoframe_header">
			<a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" class="Infoframe_headera">%%CLIENT_NAME%%</a>
		</td>
		<td style="text-align: right">
			<img width="24" src="%%?CLIENT_COUNTRY_IMAGE%%" alt="%%CLIENT_COUNTRY_TOOLTIP%%" title="%%CLIENT_COUNTRY_TOOLTIP%%" />
			<br/>Custom nick: %%?CLIENT_CUSTOM_NICK_NAME%%
		</td>
	</tr>
</table>

<table width="100%" class="Infoframe_table">
	<tr><td class="Infoframe_description">%%?CLIENT_DESCRIPTION%%</td></tr>
</table>

<hr/>

<table width="100%" class="Infoframe_table">
	<tr>
		<td>
			<table width="330" class="Infoframe_nospace">
				<tr><td class="Infoframe_subheader" colspan="2">Information</td></tr>
				<tr><td class="Infoframe_label">Client ID: </td><td>%%CLIENT_ID%% Database ID: %%CLIENT_DATABASE_ID%%</td></tr>
				<tr><td class="Infoframe_label">Unique ID: </td><td>%%CLIENT_UNIQUE_ID%%</td> </tr>
				<tr><td class="Infoframe_label">Version: </td><td><span title="%%CLIENT_VERSION_STATE%%">%%CLIENT_VERSION%%</span> on <span title="%%CLIENT_PLATFORM%%"><img src="styles:/BuG/images/%%CLIENT_PLATFORM%%.png" alt="" title="%%CLIENT_PLATFORM%%" /></span></td></tr>
				<tr><td class="Infoframe_label">Connections: </td><td> %%CLIENT_TOTALCONNECTIONS%%</td> </tr>
				<tr><td class="Infoframe_label">First Connection: </td><td>%%CLIENT_CREATED%%</td> </tr>
				<tr><td class="Infoframe_label">Connected on: </td><td>%%CLIENT_LASTCONNECTED%%</td> </tr>
				<tr><td class="Infoframe_label">Online Since: </td><td>%%CLIENT_CONNECTED_SINCE%%</td></tr>
				<tr><td class="Infoframe_label">Away Message:  </td><td>%%?CLIENT_AWAY_MESSAGE%%</td> </tr>
				<tr><td class="Infoframe_label">Volume Modifier:  </td><td>%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>
			</table>
		</td>
		<td>
			<!-- SERVER GROUPS AND CHANNELS --> 
			<table class="Infoframe_nospace">
				<tr><td class="Infoframe_subheader">Server Groups</td></tr>
				<tr><td class="Infoframe_list">%%CLIENT_SERVER_GROUP_ICON%% %%CLIENT_SERVER_GROUP_NAME%%</td></tr>
			</table>
			<table class="Infoframe_nospace">
				<tr><td class="Infoframe_space Infoframe_subheader">Channel Groups</td></tr>
				<tr><td>%%CLIENT_CHANNEL_GROUP_ICON%% %%CLIENT_CHANNEL_GROUP_NAME%%</td></tr>
				<tr><td><span>Running Applications: </span>%%?CLIENT_META_DATA%%</td></tr>
			</table>
		</td>
	</tr>
</table>

<table width="100%" class="Infoframe_table">
	<tr><td class="Infoframe_text-center alert">*** <span>Client requested talk power at: </span>%%?CLIENT_TALK_REQUEST_TIME%% ***</td></tr>
	<tr><td class="Infoframe_text-center alert">[ %%?CLIENT_TALK_REQUEST_MSG%% ]</td></tr>
</table>

<table style="padding-top: 6px;" class="Infoframe_table">%%?PLUGIN_INFO_DATA%%</table>

