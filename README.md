# Crew – vlastní AI posádka pro Claude

Plugin pro Claude Code (terminál i desktopová aplikace). Na začátku se tě zeptá, co děláš, navrhne role na míru (třeba třídění tiketů, psaní odpovědí, kontrola compliance), ty si je pojmenuješ a od té doby s nimi pracuješ. Posádka se učí z tvé zpětné vazby: co jí jednou opravíš, si zapíše, a když stejnou chybu udělá znovu, zavede si na ni kontrolu.

## Instalace

V Claude Code (terminál, nebo záložka Code v desktopové aplikaci):

```
/plugin marketplace add 0x9ffdev/crew-framework
/plugin install crew@crew-framework
```

Restartuj Claude a spusť:

```
/crew:setup
```

## Co umí

| Příkaz | Kdy |
|---|---|
| `/crew:setup` | první nastavení posádky; později přidání, změna nebo odebrání role |
| `/crew:kickoff` | začátek větší práce: zadání, plán mezi rolemi, tvoje schválení |
| `/crew:retro` | po dokončení nebo když něco opravíš: role si zapíšou poučení |
| „řekni &lt;jméno role&gt;“ | menší úkol rovnou jedné roli |

## Kde to je

Tvoje posádka je jen u tebe, ne v pluginu:
- `~/.claude/crew/CREW.md` – pravidla posádky, co schvaluješ, jak se zachází s daty,
- `~/.claude/crew/LEARNING.md` – jak se posádka učí, společná poučení,
- `~/.claude/agents/<role>.md` – každá role: laťka, postup, poučení.

Všechno jsou obyčejné textové soubory, můžeš je upravovat ručně. Aktualizace pluginu tvoji posádku nepřepíše.

## Data

Do Clauda dávej jen to, co ti firma povoluje. Pravidla pro data si posádka zapíše při nastavení do `CREW.md` a hlídá je.

---

*English: a Claude Code plugin that interviews you, proposes a crew of roles tailored to your work, lets you name them, and makes every role learn from your feedback. Install: `/plugin marketplace add 0x9ffdev/crew-framework`, `/plugin install crew@crew-framework`, then `/crew:setup`.*
