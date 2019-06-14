<!--
TeamSpeak 3 Channel Infoframe Template (EN) 
Copyright 2009-2015 (c) TeamSpeak Systems GmbH
 
The replaceable variables are embedded in "%%" like %%CHANNEL_NAME%%. At this time you can also use 
%%?CHANNEL_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

%%IMAGES_MAX_WIDTH%%500
%%IMAGES_MAX_HEIGHT%%256

Replacable variables for channels:
CHANNEL_NAME-
CHANNEL_ID
CHANNEL_TOPIC-
CHANNEL_MAXCLIENTS-
CHANNEL_MAXFAMILYCLIENTS
CHANNEL_NEEDED_TALK_POWER-
CHANNEL_ORDER-
CHANNEL_CODEC-
CHANNEL_CODEC_BITRATE-
CHANNEL_FLAGS
CHANNEL_SUBSCRIPTION-
CHANNEL_CLIENTS_COUNT-
CHANNEL_VOICE_DATA_ENCRYPTED
CHANNEL_VOICE_DATA_ENCRYPTED_FLAG
CHANNEL_DESCRIPTION
CHANNEL_ICON
PLUGIN_INFO_DATA
IMAGES_MAX_WIDTH
TEMP_CHANNEL_DELETE_DELAY
TEMP_CHANNEL_TIME_TO_DELETE
-->

<table width="100%" class="Infoframe_table">
	<tr title="Channel ID: %%CHANNEL_ID%%">
		<td>
			<span><img src="iconpath:MODERATED?size=32x32" height="32" width="32" alt="" title="Request Talk Power to be able to talk in this Channel." /> </span><span class="Infoframe_hidden">%%?CHANNEL_NEEDED_TALK_POWER%%</span>
			<a class="Infoframe_headera" href="channelid://%%CHANNEL_ID%%">%%CHANNEL_NAME%%</a>
		</td>
		<td class="Infoframe_text-right"><img src="%%?CHANNEL_ICON%%" alt="Channel Icon" title="Channel Icon" /></td>
	</tr>
</table>

<table width="100%" class="Infoframe_table"><tr><td class="Infoframe_channel-topic">%%?CHANNEL_TOPIC%%</td></tr></table>

<hr/>

<table width="100%" class="Infoframe_table">
	<tr>
		<td colspan="2">
			<table width="100%" class="Infoframe_nospace">
				<tr>
					<td><span class="Infoframe_subheader">Information</span></td>
				</tr>
			</table>
		</td>
		
	</tr>
	<tr>
		<td>
			<table width="100%" class="Infoframe_nospace">
				<tr>
					<td class="Infoframe_label">Codec:</td>
					<td>%%CHANNEL_CODEC%%</td>
				</tr>
				<tr>
					<td class="Infoframe_label">Codec Quality:</td>
					<td>%%CHANNEL_CODEC_QUALITY%% (estimated bitrate: %%CHANNEL_CODEC_BITRATE%%/s)</td>
				</tr>
				<tr><td class="Infoframe_label">Type: </td><td class="Infoframe_blue">%%?CHANNEL_FLAGS%%</td></tr>
				<tr><td class="Infoframe_label">Current Clients: </td><td>%%?CHANNEL_CLIENTS_COUNT%% / %%CHANNEL_FLAG_MAXCLIENTS%%</td></tr>
				%%?PLUGIN_INFO_DATA%%
			</table>
		</td>
		<td>
			<table width="100%" class="Infoframe_nospace">
				<tr>
					<td class="Infoframe_label">Subscription Status:</td>
					<td>%%CHANNEL_SUBSCRIPTION%%</td>
				</tr>
				<tr><td class="Infoframe_label">Voice Data Encryption:</td><td>%%CHANNEL_VOICE_DATA_ENCRYPTED%% <img src="styles:/BuG/images/encrypted_12x12.png" alt="%%?CHANNEL_VOICE_DATA_ENCRYPTED_FLAG%%" /></td></tr>
				<tr><td class="Infoframe_label" valign="center">Needed Talk Power:</td><td class="Infoframe_orange"><img src="iconpath:MODERATED?size=12x12" alt="" title="Request Talk Power to be able to talk in this Channel." />&nbsp;&nbsp;%%?CHANNEL_NEEDED_TALK_POWER%%</td></tr>
			</table>
		</td>
	</tr>
</table>

<table class="Infoframe_table" width=100%>
	<tr><td colspan="2" class="Infoframe_text-center"><p style="margin-top: 4px; font-weight: bold; font-size: 15px;" class="Infoframe_red">Channel will be deleted in %%?TEMP_CHANNEL_TIME_TO_DELETE%%.</p></td></tr>
	<tr><td class="Infoframe_space Infoframe_subheader"><img src="iconpath:CHANGE_NICKNAME?size=20x20" height="20" width="20" alt=""> Description</td></tr><tr><td class="Infoframe_list">%%?CHANNEL_DESCRIPTION%%</td></tr>
</table>
