import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
    animateNext(event) {
        event.preventDefault();
        const url = event.currentTarget.href;

        // Добавляем класс для анимации выхода (блок уезжает вверх и исчезает)
        this.element.classList.add("slide-out-up");

        // Ждём окончания анимации (0.5 сек) и затем загружаем новый контент
        setTimeout(() => {
            Turbo.visit(url, { frame: this.element.id });
        }, 500);
    }
}
