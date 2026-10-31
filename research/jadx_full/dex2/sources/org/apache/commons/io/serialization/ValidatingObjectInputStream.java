package org.apache.commons.io.serialization;

import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ValidatingObjectInputStream extends ObjectInputStream {
    private final ObjectStreamClassPredicate predicate;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ValidatingObjectInputStream(ValidatingObjectInputStream$Builder validatingObjectInputStream$Builder) {
        this(validatingObjectInputStream$Builder.getInputStream(), ValidatingObjectInputStream$Builder.access$100(validatingObjectInputStream$Builder));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ValidatingObjectInputStream$Builder builder() {
        return new ValidatingObjectInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkClassName(String str) throws InvalidClassException {
        if (this.predicate.test(str)) {
            return;
        }
        invalidClassNameFound(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ValidatingObjectInputStream accept(Class<?>... clsArr) {
        this.predicate.accept(clsArr);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidClassNameFound(String str) throws InvalidClassException {
        throw new InvalidClassException(ai.onnxruntime.a.l("Class name not accepted: ", str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> T readObjectCast() {
        return (T) super.readObject();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ValidatingObjectInputStream reject(Class<?>... clsArr) {
        this.predicate.reject(clsArr);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.ObjectInputStream
    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws InvalidClassException {
        checkClassName(objectStreamClass.getName());
        return super.resolveClass(objectStreamClass);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.ObjectInputStream
    public Class<?> resolveProxyClass(String[] strArr) throws InvalidClassException {
        for (String str : strArr) {
            checkClassName(str);
        }
        return super.resolveProxyClass(strArr);
    }

    public ValidatingObjectInputStream accept(ClassNameMatcher classNameMatcher) {
        this.predicate.accept(classNameMatcher);
        return this;
    }

    public ValidatingObjectInputStream reject(ClassNameMatcher classNameMatcher) {
        this.predicate.reject(classNameMatcher);
        return this;
    }

    public ValidatingObjectInputStream accept(Pattern pattern) {
        this.predicate.accept(pattern);
        return this;
    }

    public ValidatingObjectInputStream reject(Pattern pattern) {
        this.predicate.reject(pattern);
        return this;
    }

    public ValidatingObjectInputStream accept(String... strArr) {
        this.predicate.accept(strArr);
        return this;
    }

    public ValidatingObjectInputStream reject(String... strArr) {
        this.predicate.reject(strArr);
        return this;
    }

    public /* synthetic */ ValidatingObjectInputStream(ValidatingObjectInputStream$Builder validatingObjectInputStream$Builder, ValidatingObjectInputStream$1 validatingObjectInputStream$1) {
        this(validatingObjectInputStream$Builder);
    }

    @Deprecated
    public ValidatingObjectInputStream(InputStream inputStream) {
        this(inputStream, new ObjectStreamClassPredicate());
    }

    private ValidatingObjectInputStream(InputStream inputStream, ObjectStreamClassPredicate objectStreamClassPredicate) {
        super(inputStream);
        this.predicate = objectStreamClassPredicate;
    }
}
