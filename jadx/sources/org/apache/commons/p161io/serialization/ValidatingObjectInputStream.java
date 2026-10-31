package org.apache.commons.p161io.serialization;

import ai.onnxruntime.AbstractC0074a;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.regex.Pattern;
import org.apache.commons.p161io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ValidatingObjectInputStream extends ObjectInputStream {
    private final ObjectStreamClassPredicate predicate;

    private ValidatingObjectInputStream(Builder builder) {
        this(builder.getInputStream(), builder.predicate);
    }

    public static Builder builder() {
        return new Builder();
    }

    private void checkClassName(String str) throws InvalidClassException {
        if (this.predicate.test(str)) {
            return;
        }
        invalidClassNameFound(str);
    }

    public ValidatingObjectInputStream accept(Class<?>... clsArr) {
        this.predicate.accept(clsArr);
        return this;
    }

    public void invalidClassNameFound(String str) throws InvalidClassException {
        throw new InvalidClassException(AbstractC0074a.m161l("Class name not accepted: ", str));
    }

    public <T> T readObjectCast() {
        return (T) super.readObject();
    }

    public ValidatingObjectInputStream reject(Class<?>... clsArr) {
        this.predicate.reject(clsArr);
        return this;
    }

    @Override // java.io.ObjectInputStream
    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws InvalidClassException {
        checkClassName(objectStreamClass.getName());
        return super.resolveClass(objectStreamClass);
    }

    @Override // java.io.ObjectInputStream
    public Class<?> resolveProxyClass(String[] strArr) throws InvalidClassException {
        for (String str : strArr) {
            checkClassName(str);
        }
        return super.resolveProxyClass(strArr);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<ValidatingObjectInputStream, Builder> {
        private ObjectStreamClassPredicate predicate = new ObjectStreamClassPredicate();

        @Deprecated
        public Builder() {
        }

        public Builder accept(Class<?>... clsArr) {
            this.predicate.accept(clsArr);
            return this;
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public ValidatingObjectInputStream get() {
            return new ValidatingObjectInputStream(this);
        }

        public ObjectStreamClassPredicate getPredicate() {
            return this.predicate;
        }

        public Builder reject(Class<?>... clsArr) {
            this.predicate.reject(clsArr);
            return this;
        }

        public Builder setPredicate(ObjectStreamClassPredicate objectStreamClassPredicate) {
            if (objectStreamClassPredicate == null) {
                objectStreamClassPredicate = new ObjectStreamClassPredicate();
            }
            this.predicate = objectStreamClassPredicate;
            return this;
        }

        public Builder accept(ClassNameMatcher classNameMatcher) {
            this.predicate.accept(classNameMatcher);
            return this;
        }

        public Builder reject(ClassNameMatcher classNameMatcher) {
            this.predicate.reject(classNameMatcher);
            return this;
        }

        public Builder accept(Pattern pattern) {
            this.predicate.accept(pattern);
            return this;
        }

        public Builder reject(Pattern pattern) {
            this.predicate.reject(pattern);
            return this;
        }

        public Builder accept(String... strArr) {
            this.predicate.accept(strArr);
            return this;
        }

        public Builder reject(String... strArr) {
            this.predicate.reject(strArr);
            return this;
        }
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

    @Deprecated
    public ValidatingObjectInputStream(InputStream inputStream) {
        this(inputStream, new ObjectStreamClassPredicate());
    }

    private ValidatingObjectInputStream(InputStream inputStream, ObjectStreamClassPredicate objectStreamClassPredicate) {
        super(inputStream);
        this.predicate = objectStreamClassPredicate;
    }
}
