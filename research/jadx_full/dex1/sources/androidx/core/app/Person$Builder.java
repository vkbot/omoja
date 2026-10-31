package androidx.core.app;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Person$Builder {

    @Nullable
    IconCompat mIcon;
    boolean mIsBot;
    boolean mIsImportant;

    @Nullable
    String mKey;

    @Nullable
    CharSequence mName;

    @Nullable
    String mUri;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Person$Builder(Person person) {
        this.mName = person.mName;
        this.mIcon = person.mIcon;
        this.mUri = person.mUri;
        this.mKey = person.mKey;
        this.mIsBot = person.mIsBot;
        this.mIsImportant = person.mIsImportant;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Person build() {
        return new Person(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Person$Builder setBot(boolean z8) {
        this.mIsBot = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Person$Builder setIcon(@Nullable IconCompat iconCompat) {
        this.mIcon = iconCompat;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Person$Builder setImportant(boolean z8) {
        this.mIsImportant = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Person$Builder setKey(@Nullable String str) {
        this.mKey = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Person$Builder setName(@Nullable CharSequence charSequence) {
        this.mName = charSequence;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Person$Builder setUri(@Nullable String str) {
        this.mUri = str;
        return this;
    }

    public Person$Builder() {
    }
}
