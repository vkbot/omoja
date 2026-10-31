package org.apache.commons.io.serialization;

import java.util.regex.Pattern;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ValidatingObjectInputStream$Builder extends AbstractStreamBuilder<ValidatingObjectInputStream, ValidatingObjectInputStream$Builder> {
    private ObjectStreamClassPredicate predicate = new ObjectStreamClassPredicate();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public ValidatingObjectInputStream$Builder() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ObjectStreamClassPredicate access$100(ValidatingObjectInputStream$Builder validatingObjectInputStream$Builder) {
        return validatingObjectInputStream$Builder.predicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ValidatingObjectInputStream$Builder accept(Class<?>... clsArr) {
        this.predicate.accept(clsArr);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public ValidatingObjectInputStream get() {
        return new ValidatingObjectInputStream(this, (ValidatingObjectInputStream$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ObjectStreamClassPredicate getPredicate() {
        return this.predicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ValidatingObjectInputStream$Builder reject(Class<?>... clsArr) {
        this.predicate.reject(clsArr);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ValidatingObjectInputStream$Builder setPredicate(ObjectStreamClassPredicate objectStreamClassPredicate) {
        if (objectStreamClassPredicate == null) {
            objectStreamClassPredicate = new ObjectStreamClassPredicate();
        }
        this.predicate = objectStreamClassPredicate;
        return this;
    }

    public ValidatingObjectInputStream$Builder accept(ClassNameMatcher classNameMatcher) {
        this.predicate.accept(classNameMatcher);
        return this;
    }

    public ValidatingObjectInputStream$Builder reject(ClassNameMatcher classNameMatcher) {
        this.predicate.reject(classNameMatcher);
        return this;
    }

    public ValidatingObjectInputStream$Builder accept(Pattern pattern) {
        this.predicate.accept(pattern);
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }

    public ValidatingObjectInputStream$Builder reject(Pattern pattern) {
        this.predicate.reject(pattern);
        return this;
    }

    public ValidatingObjectInputStream$Builder accept(String... strArr) {
        this.predicate.accept(strArr);
        return this;
    }

    public ValidatingObjectInputStream$Builder reject(String... strArr) {
        this.predicate.reject(strArr);
        return this;
    }
}
