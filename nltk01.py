""" Learn some NLTK """
import nltk
from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords

STOPSET = set(stopwords.words('english'))
STOPSET.update((" ' ", ',', '.', 'I', "'s", "And", "-", "n't", "'m", "it", '"'))
with open('data/HOF_speeches_2003_to_2016.txt', 'r') as text_file:
    TEXT = text_file.read()
    CORPUS = word_tokenize(str(TEXT))
    CORPUS = [w for w in CORPUS if not w in STOPSET]

ABSTRACTS = nltk.Text(CORPUS)
ALL_WORDS = len(CORPUS)
UNIQ_WORDS = len(set(CORPUS))
UNIQ_PERCETAGE = len(set(CORPUS)) / len(CORPUS)
print("Total words in this analysis: " + str(ALL_WORDS))
print("Total UNIQUE words: " + str(UNIQ_WORDS))
print("Percentage that are UNIQUE words: " + str(UNIQ_PERCETAGE))
FD = nltk.FreqDist(CORPUS)
FD.plot(25, cumulative=False)
