package utils;

import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Utils {
    public static Map<String, String> parseUrlEncoded(String rawLines, String delimiter) {
        String[] pairs = rawLines.split("&");
        Stream<Map.Entry<String, String>> stream = Arrays.stream(pairs)
                .map(Utils::decode)
                .filter(Optional::isPresent)
                .map(Optional::get);
        return stream.collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue));
    }

    public static Optional<Map.Entry<String, String>> decode(String line) {
        if (!line.contains("=")) return Optional.empty();

        String[] pair = line.split("=");
        if (pair.length != 2) return Optional.empty();

        Charset utf8 = StandardCharsets.UTF_8;
        String key = URLDecoder.decode(pair[0], utf8);
        String value = URLDecoder.decode(pair[1], utf8);

        return Optional.of(Map.entry(key, value));
    }

    public static String parseUrlEncodedBook(String raw) {
        return String.valueOf(decodeBook(raw));
    }

    public static Optional<String> decodeBook(String decode) {
        if (!decode.contains("=")) return Optional.empty();
        Charset utf8 = StandardCharsets.UTF_8;
        return Optional.of(URLDecoder.decode(decode, utf8));
    }
}