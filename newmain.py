import discord
from discord.ext import commands

intents = discord.Intents.default()
intents.typing = True
intents.presences = False

bot = commands.Bot(command_prefix='/', intents=intents)


class Bot(commands.Bot):
    def __init__(self, intents: discord.Intents, **kwargs):
        super().__init__(command_prefix='!', intents=intents, **kwargs)
    
    async def on_ready(self):
        print(f"Logged in as {self.user}")
        await self.tree.sync()

intents = discord.Intents.all()
bot = Bot(intents=intents)


@bot.hybrid_command(name='script', description='script free')
async def ping(interaction: discord.Interaction):
    embed = discord.Embed(title='gg', description='Script auto chest lay config o chanel config nha ', color=discord.Color.green())
    embed = discord.Embed(title='gg', description=' lay config o chanel config nha ', color=discord.Color.green())
    embed = discord.Embed(title='gg', description='anh nho em lam ', color=discord.Color.green())
    await interaction.reply('Check Your Dms')

    embed.add_field(name='Script:', value='```loadstring(game:HttpGet("https://github.com/Jackermissyou/sunhub/blob/main/autochetv3.txt"))()```')
    await interaction.reply(embed=embed, ephemeral=True)
    await client.send_message(message.author, ephemeral)
@bot.event
async def on_ready():
    await bot.change_presence(activity=discord.Streaming(name='Anh đã rất nhớ em', url='https://www.twitch.tv/leekbeats'))
    print(f'Logged in as {bot.user.name}')
    print('Bot is online')


bot.run('MTE1OTA3MjcwMDc0MDkzMTU5NA.G1RTdZ.FxELXprV5i8bNxUPoXzJlpUlNRDQzDguxbyjes')