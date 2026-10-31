package androidx.core.app;

import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(22)
public class Person$Api22Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Person$Api22Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Person fromPersistableBundle(PersistableBundle persistableBundle) {
        return new Person$Builder().setName(persistableBundle.getString("name")).setUri(persistableBundle.getString("uri")).setKey(persistableBundle.getString("key")).setBot(persistableBundle.getBoolean("isBot")).setImportant(persistableBundle.getBoolean("isImportant")).build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static PersistableBundle toPersistableBundle(Person person) {
        PersistableBundle persistableBundle = new PersistableBundle();
        CharSequence charSequence = person.mName;
        persistableBundle.putString("name", charSequence != null ? charSequence.toString() : null);
        persistableBundle.putString("uri", person.mUri);
        persistableBundle.putString("key", person.mKey);
        persistableBundle.putBoolean("isBot", person.mIsBot);
        persistableBundle.putBoolean("isImportant", person.mIsImportant);
        return persistableBundle;
    }
}
