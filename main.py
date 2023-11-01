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


@bot.hybrid_command(name='autochest', description='script free')
async def ping(interaction: discord.Interaction):
    embed = discord.Embed(title='Auto chest Script', description='Script auto chest lay config o chanel config nha ', color=discord.Color.green())
    embed = discord.Embed(title='Auto chest Script', description=' lay config o chanel config nha ', color=discord.Color.green())
    embed = discord.Embed(title='Auto chest Script', description='anh nho em lam ', color=discord.Color.green())
    embed.add_field(name='Script:', value='```loadstring(game:HttpGet("https://github.com/Jackermissyou/sunhub/blob/main/autochetv3.txt"))()```')
    await interaction.reply(embed=embed, ephemeral=True)
@bot.event
async def on_ready():
    await bot.change_presence(activity=discord.Streaming(name='Anh đã rất nhớ em', url='https://www.twitch.tv/leekbeats'))
    print(f'Logged in as {bot.user.name}')
    print('Bot is online')


bot.run("MTE1NjE5NjA3MjQxMTEwNzMzOA.GoeFlk.N0u0eGX6qxp7zpaeTTNkIVzNW56Pszp542yGGc")