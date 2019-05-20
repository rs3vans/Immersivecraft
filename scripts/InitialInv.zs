import mods.initialinventory.InvHandler;

val instructionBook = <minecraft:written_book>.withTag({
    pages: [
        "{\"text\":\"Minecraft Tools book\"}"
    ],
    title: "Book",
    author: "...",
    display: {
        Lore: [ "Blahblah" ]
    }
});

InvHandler.addStartingItem(instructionBook, 0);
InvHandler.addStartingItem(<minecraft:apple> * 2, 1);
InvHandler.addStartingItem(<minecraft:torch> * 4, 2);