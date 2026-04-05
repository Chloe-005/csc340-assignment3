package csc340.assignment3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/characters")
public class CharacterUiController {

    @Autowired
    private CharacterService characterService;

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/{id}")
    public String getCharacterById(@PathVariable Long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        if (character != null) {
            return "character-details";
        } else {
            return "about";
        }
    }

    @GetMapping("/add")
    public String showCreateForm(Model model) {
        model.addAttribute("character", new Character());
        model.addAttribute("title", "Add New Character");
        return "new-character-form";
    }

    @GetMapping("/all")
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", characterService.getAllCharacters());
        return "character-list";
    }

    @PostMapping("/")
    public String addCharacter(Character character) {
        characterService.createCharacter(character);
        return "redirect:/characters/all";
    }

    @GetMapping("/updateForm/{id}")
    public Object showUpdateForm(@PathVariable Long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        model.addAttribute("title", "Update Character: " + id);
        return "character-update";
    }

    @PostMapping("/update/{id}")
    public String updateCharacter(@PathVariable Long id, Character character) {
        characterService.updateCharacter(id, character);
        return "redirect:/characters/" + id;
    }
}
