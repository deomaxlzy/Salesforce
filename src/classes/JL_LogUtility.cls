/**
 * Created by JohnnyLou on 2019/7/20.
 */

public without sharing class JL_LogUtility {
    public static String getObjectType(Object obj) {
        if (obj == null) return '';

        if (obj instanceof String || obj instanceof Type) {
            return String.valueOf(obj);
        } else if (obj instanceof Id) {
            return 'Id';
        } else if (obj instanceof Integer) {
            return 'Integer';
        } else if (obj instanceof Decimal) {
            return 'Decimal';
        } else if (obj instanceof Long) {
            return 'Long';
        } else if (obj instanceof Double) {
            return 'Double';
        } else if (obj instanceof Boolean) {
            return 'Boolean';
        } else if (obj instanceof Blob) {
            return 'Blob';
        } else if (obj instanceof Datetime) {
            return 'Datetime';
        } else if (obj instanceof Date) {
            return 'Date';
        } else if (obj instanceof Time) {
            return 'Time';
        } else {
            List<String> tokens = String.valueOf(obj).split(':');
            if (tokens.size() <= 1) {
                return 'Object';
            } else {
                return tokens.get(0);
            }
        }
    }
}