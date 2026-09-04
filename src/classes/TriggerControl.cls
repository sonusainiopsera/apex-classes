public with sharing class TriggerControl {
    private static Set<String> disabledHandlers =
        new Set<String>();

    public static void disable(String handlerName) {
        if (!String.isBlank(handlerName)) {
            disabledHandlers.add(handlerName);
        }
    }

    public static void enable(String handlerName) {
        if (!String.isBlank(handlerName)) {
            disabledHandlers.remove(handlerName);
        }
    }

    public static Boolean isDisabled(String handlerName) {
        return disabledHandlers.contains(handlerName);
    }

    public static void reset() {
        disabledHandlers.clear();
    }
}