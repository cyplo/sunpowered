import datetime
from measure import measure
from measurement_config import samples_filepath

try:
   import cPickle as pickle
except:
   print "warning: using standard pickle instead of cPickle"
   import pickle

class Sampler:
    
    def __init__(self, time_keeper):
        self.samples = self.load()
        self.time_keeper = time_keeper

    def should_remove_oldest(self):
        timestamp = self.samples[0]['timestamp']
        date = datetime.datetime.fromtimestamp(timestamp)
        days_to_keep = 999
        return (datetime.datetime.today() - date).days > days_to_keep 

    def sample(self):
        if(self.time_keeper.can_sample()):
            print "sampling.."
            self.samples.append( measure() )
            while(self.should_remove_oldest()):
                self.samples.pop(0)

    def save(self, force = False):
        if( self.time_keeper.can_save() or force):
            print "saving samples..."
            pickle.dump( self.samples, open( samples_filepath(), "wb" ) )
            self.time_keeper.saved()
            print str(len(self.samples)) + " samples saved" 
        
    def load(self):
        all_samples = []
        print "loading samples..."
        try:
            all_samples = pickle.load( open( samples_filepath(), "rb" ) )
            print str(len(all_samples)) + " samples loaded"
        except(IOError, EOFError, ValueError):
            pass
        return all_samples
