const { Client, Intents, MessageEmbed, MessageActionRow, MessageButton } = require('discord.js');

const client = new Client({ intents: [Intents.FLAGS.GUILDS, Intents.FLAGS.GUILD_MESSAGES] });

client.once('ready', () => {
  console.log('Bot đã sẵn sàng.');
  client.user.setStatus('online'); // more status 'idle' or 'online' ^^
  client.user.setActivity('Roblox');
});

client.on('messageCreate', (message) => {
  if (message.content === '!PanelPremiumScript') {
    const embed = new MessageEmbed()
      .setColor('#ffff00')
      .setTitle('Evo hub Premium Control Panel')
      .setDescription(`This control panel is for the project: Evo hub
            If you're a buyer, click on the buttons below to redeem your key, get the script or get your role`);

    const buttonRow = new MessageActionRow()
      .addComponents(
        new MessageButton()
          .setCustomId('get_script')
          .setLabel('Get Script')
          .setStyle('PRIMARY')
          .setEmoji('📄'),
        new MessageButton()
          .setCustomId('get_role')
          .setLabel('Get Role')
          .setStyle('PRIMARY')
          .setEmoji('👥'),
        new MessageButton()
          .setCustomId('Reset_Hwid')
          .setLabel('Reset Hwid')
          .setStyle('SECONDARY')
          .setEmoji('🔄'),
        new MessageButton()
          .setCustomId('Get_Stats')
          .setLabel('Get Stats')
          .setStyle('SECONDARY')
          .setEmoji('📊')
      );

    message.channel.send({ embeds: [embed], components: [buttonRow] });
  }
});

client.on('interactionCreate', async (interaction) => {
  if (interaction.isButton()) {
    if (interaction.customId === 'get_script') {
      const user = interaction.user;
      await user.send('Axc Hub Script Not Found')
      await interaction.reply('Check Your Dms');
    }
  }
});

client.login('MTE1OTA3MjcwMDc0MDkzMTU5NA.G1RTdZ.FxELXprV5i8bNxUPoXzJlpUlNRDQzDguxbyjes');